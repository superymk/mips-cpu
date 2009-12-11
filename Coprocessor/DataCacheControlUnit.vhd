
--LIBRARY IEEE;
--USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--
--entity DataCacheControlUnit is
--       port (
--                  CLK             : in bit;
--                  RESET           : in bit;
--                  --addr            : in bit_vector(4 downto 0);
--                  --readsig         : in bit;
--                  --writesig        : in bit;
--                  HIT             : in bit;
--                  VALID           : in bit_vector(3 downto 0);
--                  DIRTY           : in bit_vector(3 downto 0);
--                  --data_t_mem      : in bit_vector(127 downto 0); -- the exact data is stored in the low 32 bits
--                  --data_f_cpu      : in bit_vector(127 downto 0);
--                  --data_f_mem      : in bit_vector(127 downto 0);
--                  --tagin           : in bit_vector(2 downto 0);
--                  --fwb             : in bit;
--                  
--                  --cachefree       : out bit;
--                  WRITEENTRY      : out bit; -- Send 'Write Enable' to cache entry stack. 
--                 -- replaceblock    : out bit;
--                  ENTRYSEL        : out std_logic_vector(2 downto 0);
--                 -- readln          : out bit;
--                  WRITEMEM        : out bit; -- Update Memory
--                  MEMADDR         : out bit_vector(31 downto 0); -- The update target address
--                  MEMWDATA        : out bit_vector(127 downto 0); -- The value to update the memory
--                 -- select_addr     : out bit; -- address come from ? 0-outside 1-inside
--                 -- datain          : out bit_vector(127 downto 0);
--                 -- addrin          : out bit_vector(4 downto 0)
--       );
--
--      -- type status is (FREE, RMWB, RMF, WMWB, WMF, WD, FDWB, F_WB);
--
--      -- signal current             : status;
--       signal count               : integer;
--       signal next_rep            : integer;
--       signal tmp_wdata           : bit_vector(127 downto 0);
--       signal tmp_waddr           : bit_vector(4 downto 0);
--       
--       constant delay             : integer := 5;
--
--end DataCacheControlUnit;
--
--Architecture cc of DataCacheControlUnit is 
--begin
--  process (CLK, RESET)
--  begin
--    if RESET = '0' then
--      current <= FREE;
--      replaceblock <= '0';
--      cachefree <= '1';
--      WRITEMEM <= '0';
--      WRITEENTRY <= '0';
--      count <= 0;
--      readln <= '0';
--      select_addr <= '0';
--    elsif ((CLK' event) and (CLK = '0')) then
--      if (current = FREE) then
--	     if (fwb = '1') then
--	         cachefree <= '0';
--	         current <= FDWB;
--	     elsif writesig = '1' then
--	         tmp_wdata <= data_f_cpu;
--	         cachefree <= '0';
--	         if HIT = '1' then   WRITEENTRY <= '1';
--	            select_addr <= '1';
--	            addrin <= addr;
--	            current <= WD;
--	            datain <= data_f_cpu;
--	         
--	         else -- miss
--	            if ( (VALID(next_rep)='0') or (DIRTY(next_rep)='0') ) then -- inVALID or data same with that in mem
--	                MEMADDR(4 downto 3) <= "00";
--	                MEMADDR(2 downto 0) <= addr(4 downto 2);
--	                addrin <= addr;
--	                current <= WMF;
--	                count <= delay;
--	            else
--	                readln <= '1';
--	                addrin(4 downto 2) <= tagin; -- place data in the lowest part 
--	                addrin(1 downto 0) <= "00";
--	                tmp_waddr <= addr;
--	                MEMADDR(4 downto 3) <= "00";
--	                MEMADDR(2 downto 0) <= tagin;
--	                current <= WMWB;
--	                count <= delay + 1;
--	            end if;
--	         end if;
--	     elsif readsig = '1' then
--	         if HIT = '0' then
--	            cachefree <= '0';
--	            if ( (VALID(next_rep)='0') or (DIRTY(next_rep)='0') ) then
--		            MEMADDR(4 downto 3) <= "00";
--		            MEMADDR(2 downto 0) <= addr(4 downto 2);
--		            addrin <= addr;
--		            current <= RMF;
--		            count <= delay;
--	            else
--		            readln <= '1';
--		            select_addr <= '1';
--		            addrin(4 downto 2) <= tagin;
--		            addrin(1 downto 0) <= "00";
--		            tmp_waddr <= addr;
--		            MEMADDR(4 downto 3) <= "00";
--		            MEMADDR(2 downto 0) <= tagin;
--		            current <= RMWB;
--		            count <= delay + 1;
--	             end if;
--	         end if;
--	     else
--	         cachefree <= '1';
--	         current <= FREE;
--	     end if;
--    elsif ((current = WMF) or (current = RMF)) then
--	      count <= count - 1;
--	      if count = 1 then
--	         replaceblock <= '1';
--	         select_addr <= '1';
--	         datain <= data_f_mem;
--	      elsif (count = 0) then
--	         replaceblock <= '0';
--	         next_rep <= next_rep + 1;
--	         if next_rep >= 4 then
--	            next_rep <= next_rep - 4;
--	         end if;
--	         if current = WMF then
--	            WRITEENTRY <= '1';
--	            datain <= tmp_wdata;
--	            current <= WD;
--	         else
--	            cachefree <= '1';
--	            select_addr <= '0';
--	            current <= FREE;
--	         end if;
--	      end if;
--    elsif ( (current=WMWB) or (current=RMWB) or (current=F_WB) ) then
--	      count <= count - 1;
--	      if count = delay then -- as a signal of writeback
--	         WRITEMEM <= '1';
--	         MEMWDATA <= data_t_mem;
--	         readln <= '0';
--	         select_addr <= '1';
--	      elsif count = 0 then
--	         WRITEMEM <= '0';
--	         count <= delay; -- recover count for refill
--	         MEMADDR(4 downto 3) <= "00";
--	         MEMADDR(2 downto 0) <= tmp_waddr(4 downto 2);
--	         addrin <= tmp_waddr;
--	         if current = WMWB then
--	            current <= WMF;
--	         elsif current = RMWB then
--	            current <= RMF;
--	         else
--	            current <= FDWB;
--	            next_rep <= next_rep + 1; -- in fact, is a loop that makes all content in cache be written back to memory
--	         end if;
--	      end if;
--    elsif current = WD then
--	      WRITEENTRY <= '0';
--	      select_addr <= '0';
--	      cachefree <= '1';
--	      current <= FREE;
--    elsif current = FDWB then
--	      if next_rep = 4 then
--	         cachefree <= '1';
--	         next_rep <= 0;
--	         current <= FREE;
--	      else
--	         if ( (VALID(next_rep)='1') and (DIRTY(next_rep)='1') ) then --loop done
--	             readln <= '1';
--	             select_addr <= '1';
--	             addrin(4 downto 2) <= tagin;
--	             addrin(1 downto 0) <= "00";
--	             MEMADDR(4 downto 3) <= "00";
--	             MEMADDR(2 downto 0) <= tagin;
--	             count <= delay +1;
--	             current <= F_WB;
--	         else
--	             next_rep <= next_rep + 1;
--	         end if;
--	      end if;
--	end if;
--	end if;
--    ENTRYSEL <= CONV_STD_LOGIC_VECTOR(next_rep, 3);
--  end process;
--end;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

entity DataCacheControlUnit is
       port (
                  CLK             	: in bit;
                  RESET           	: in bit;
                  --addr            : in bit_vector(4 downto 0);
                  READSIG         	: in bit;
                  WRITESIG        	: in bit;
                  HIT             	: 	in bit;
                  VALID           	: 	in bit_vector(7 downto 0);
                  DIRTY           	: 	in bit_vector(7 downto 0);
                  ADDR				: 	in bit_vector(31 downto 0); -- Access address
                  DataToMem			:	in bit_vector(31 downto 0); -- the data to write to the data memory.
                  --data_t_mem      : in bit_vector(127 downto 0); -- the exact data is stored in the low 32 bits
                  --data_f_cpu      : in bit_vector(127 downto 0);
                  --data_f_mem      : in bit_vector(127 downto 0);
                  TAG           : in bit_vector(24 downto 0); -- ADDR[31..7]
                  --fwb             : in bit;
                  
                  CACHEFREE      : out bit;
                  WRITEENTRY      : out bit; -- Send 'Write Enable' to cache entry stack. 
				  REPLACEENTRY		: out bit;
                  ENTRYSEL        	: out std_logic_vector(2 downto 0);
                  READLN          	: out bit;
                  WRITEMEM        : out bit; -- Update Memory
                  MEMADDR         : out bit_vector(31 downto 0); -- The update target address
                  MEMWDATA        : out bit_vector(127 downto 0); -- The value to update the memory
                 -- select_addr     : out bit; -- address come from ? 0-outside 1-inside
                  DATAIN          : out bit_vector(127 downto 0)
                 -- addrin          : out bit_vector(4 downto 0)
       );

      -- type status is (FREE, RMWB, RMF, WMWB, WMF, WD, FDWB, F_WB);
       type status is (FREE, BUSY);

       signal current             : status;
       signal nextToRep               : integer := 0;
       -- signal next_rep            : integer;
       signal tmp_wdata           : bit_vector(127 downto 0);
       signal tmp_waddr           : bit_vector(4 downto 0);
       
        --constant delay             : integer := 5;

end DataCacheControlUnit;


Architecture cc of DataCacheControlUnit is 
begin
  process (CLK, RESET)
  begin
    if RESET = '0' then
      current <= FREE;
      REPLACEENTRY <= '0';
      CACHEFREE <= '1';
      WRITEMEM <= '0';
      WRITEENTRY <= '0';
     -- count <= 0;
      READLN <= '0';
     -- select_addr <= '0';
    elsif ((CLK' event) and (CLK = '0')) then
      if (current = FREE) then
	     -- if (fwb = '1') then
	      --   cachefree <= '0';
	       --  current <= FDWB;
	     if writesig = '1' then
	         tmp_wdata <= DataToMem;
	         CACHEFREE <= '0';
	         if HIT = '1' then   WRITEENTRY <= '1';
	            -- select_addr <= '1';
	            -- addrin <= addr;
	            current <= BUSY;
	            DATAIN <= DataToMem;
	            
	         end if;
		 end if;
	   end if;
	 end if;
    --ENTRYSEL <= CONV_STD_LOGIC_VECTOR(next_rep, 3);
  end process;
end;