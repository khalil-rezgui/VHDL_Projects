-----------------------------------------------------------------------------------------
-- Create by: 			Khalil REZGUI
-- Create Date:    	14/03/2020 
-- Project Name: 	 	Gestion de l'afficheur 7 Segments  
-----------------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY Test_7SEG IS
END Test_7SEG;
 
ARCHITECTURE behavior OF Test_7SEG IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Process_LED
    PORT(
         clk : IN  std_logic;
         IN1 : IN  std_logic;
         IN2 : IN  std_logic;
         IN3 : IN  std_logic;
         IN4 : IN  std_logic;
         TransEN1 : OUT  std_logic;
         TransEN2 : OUT  std_logic;
         TransEN3 : OUT  std_logic;
         Seg_value : OUT  std_logic_vector(7 downto 0);
         LED : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal IN1 : std_logic := '0';
   signal IN2 : std_logic := '0';
   signal IN3 : std_logic := '0';
   signal IN4 : std_logic := '0';

 	--Outputs
   signal TransEN1 : std_logic;
   signal TransEN2 : std_logic;
   signal TransEN3 : std_logic;
   signal Seg_value : std_logic_vector(7 downto 0);
   signal LED : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Process_LED PORT MAP (
          clk => clk,
          IN1 => IN1,
          IN2 => IN2,
          IN3 => IN3,
          IN4 => IN4,
          TransEN1 => TransEN1,
          TransEN2 => TransEN2,
          TransEN3 => TransEN3,
          Seg_value => Seg_value,
          LED => LED
        );

   -- Stimulus process
   stim_proc: process
   begin
			wait for 100 ns;
			
         -- Crct�re '1'			
			clk <= not(clk); 			
			IN1<= '1'; 
			IN2<= '0'; 
			IN3<= '0'; 
			IN4<= '0'; 
			wait for 100 ns;	
			
			clk <= not(clk); 
			wait for 20 ns ;
			
			-- Crct�re '2'	
			clk <= not(clk); 
			IN1<= '0'; 
			IN2<= '1'; 
			IN3<= '0'; 
			IN4<= '0'; 
			wait for 100 ns;
			
			clk <= not(clk); 
			wait for 20 ns ;
			
			-- Crct�re '3'
			clk <= not(clk);	
			IN1<= '1'; 
			IN2<= '1'; 
			IN3<= '0'; 
			IN4<= '0'; 
			wait for 100 ns;
			
			clk <= not(clk); 
			wait for 20 ns ;
			
			-- Crct�re '4'
			clk <= not(clk);	
			IN1<= '1'; 
			IN2<= '0'; 
			IN3<= '1'; 
			IN4<= '0'; 
			wait for 100 ns;
			
			clk <= not(clk); 
			wait for 20 ns ;
			
			-- Crct�re '7'	
			clk <= not(clk);	
			IN1<= '1'; 
			IN2<= '1'; 
			IN3<= '1'; 
			IN4<= '0';
			wait for 100 ns;
			
   end process;

END;
