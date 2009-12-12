LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity CacheEntry is
  port (
          CLK        : in std_logic;
          RESET      : in std_logic;
          ADDR       : in std_logic_vector(31 downto 0);--[31..7][6..4][3..0] (Granularity:Byte)
          WRITEENTRY : in std_logic;
          REPLACE    : in std_logic;
          READLN     : in std_logic;
          DATAIN     : in bit_vector(127 downto 0);
                          -- REPLACE block data , or [31..0] as write data
          HIT        : out std_logic;
          VALID      : out std_logic;
          DIRTY      : out std_logic;
          TAG        : out std_logic_vector(24 downto 0);
          DATAOUT    : out bit_vector(127 downto 0) -- be used like DATAIN
       );
       
       signal vld, dty : std_logic;
       signal CacheIndex       : std_logic_vector(2 downto 0);
       signal data     : bit_vector(127 downto 0);
       signal InternalTag	: std_logic_vector(24 downto 0); -- Addr[31..7]
end CacheEntry;

arcHITecture ca of CacheEntry is
  begin
    process (CLK, ADDR, WRITEENTRY, REPLACE, RESET, READLN)
       begin
          -- write part
          if (CLK' event) and (CLK = '1') then
              if RESET = '0' then
                 data <= X"00000000000000000000000000000000";
                 vld <= '0';
                 dty <= '0';
                 CacheIndex  <= "000";
                 HIT <= '0';
                 DATAOUT <= data; -- in fact , all zero
                 --InternalTag <= "0000 0000 0000 0000 0000 0000 0";
              else
                 if REPLACE = '1' then
                    vld <= '1';
                    dty <= '0';
                    CacheIndex <= ADDR(6 downto 4);
                    data <= DATAIN;
                 elsif WRITEENTRY = '1' then
                    if (ADDR(6 downto 4) = CacheIndex) and (vld = '1') then
                        dty <= '1';
                        if ADDR(3 downto 2) = "11" then
                           data(31 downto 0) <= DATAIN(31 downto 0);
                        elsif ADDR(3 downto 2) = "10" then
                           data(63 downto 32) <= DATAIN(31 downto 0);
                        elsif ADDR(3 downto 2) = "01" then
                           data(95 downto 64) <= DATAIN(31 downto 0);
                        elsif ADDR(3 downto 2) = "00" then -- 00
                           data(127 downto 96) <= DATAIN(31 downto 0);
                        end if;
                    end if;
                 end if;
              end if;
          end if;
          -- read part
          -- can be read at any time
          DATAOUT <= X"00000000000000000000000000000000"; --initializing
          if READLN = '1' then
             DATAOUT <= data;
          else
             if (ADDR(6 downto 4)=CacheIndex) and (vld = '1') then
                 HIT <= '1';
                 if ADDR(3 downto 2) = "11" then
                    DATAOUT(31 downto 0) <= data(31 downto 0);
                 elsif ADDR(3 downto 2) = "10" then
                    DATAOUT(31 downto 0) <= data(63 downto 32);
                 elsif ADDR(3 downto 2) = "01" then
                    DATAOUT(31 downto 0) <= data(95 downto 64);
                 elsif ADDR(3 downto 2) = "00" then -- 00
                    DATAOUT(31 downto 0) <= data(127 downto 96);
                 end if;
             else
                 HIT <= '0';
             end if;
          end if;
          DIRTY <= dty;
          VALID <= vld;
          InternalTag   <= ADDR(31 downto 7);
          TAG <= InternalTag;
    end process;
end;