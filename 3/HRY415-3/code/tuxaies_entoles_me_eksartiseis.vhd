LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tuxaies_entoles_me_eksartiseis IS
END tuxaies_entoles_me_eksartiseis;
 
ARCHITECTURE behavior OF tuxaies_entoles_me_eksartiseis IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Back_end
    PORT(
         issue : IN  std_logic;
         Clk : IN  std_logic;
         FU_type : IN  std_logic_vector(1 downto 0);
         IF_Fop : IN  std_logic_vector(1 downto 0);
         IF_Ri : IN  std_logic_vector(4 downto 0);
         IF_Rj : IN  std_logic_vector(4 downto 0);
         IF_Rk : IN  std_logic_vector(4 downto 0);
         accepted : OUT  std_logic;
         PC_in : IN  std_logic_vector(31 downto 0);
         PC_exception : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal issue : std_logic := '0';
   signal Clk : std_logic := '0';
   signal FU_type : std_logic_vector(1 downto 0) := (others => '0');
   signal IF_Fop : std_logic_vector(1 downto 0) := (others => '0');
   signal IF_Ri : std_logic_vector(4 downto 0) := (others => '0');
   signal IF_Rj : std_logic_vector(4 downto 0) := (others => '0');
   signal IF_Rk : std_logic_vector(4 downto 0) := (others => '0');
   signal PC_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal accepted : std_logic;
   signal PC_exception : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Back_end PORT MAP (
          issue => issue,
          Clk => Clk,
          FU_type => FU_type,
          IF_Fop => IF_Fop,
          IF_Ri => IF_Ri,
          IF_Rj => IF_Rj,
          IF_Rk => IF_Rk,
          accepted => accepted,
          PC_in => PC_in,
          PC_exception => PC_exception
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
  

		-- not arxikopoihshs
		wait for Clk_period/2;
			issue <= '1';
			FU_type <= "00";
			IF_Fop <= "10";
			IF_Ri <= "00000";
			IF_Rj <= "00010";
			IF_Rk <= "11010";
			 
      wait for Clk_period;
			issue <= '0';
         IF_Rj <= "00000";
	
      wait for Clk_period*3;
		
	
		-- +
			issue <= '1';
			
			FU_type <= "01";
			IF_Fop <= "00";
			IF_Ri <= "00001";
			IF_Rk <= "00000";
			
		-- shift
      wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "10";
			IF_Ri <= "00010";
			IF_Rk <= "00001";
		
		-- or
		wait for Clk_period;	
			FU_type <= "00";
			IF_Fop <= "00";
			IF_Ri <= "00011";
			IF_Rk <= "00010";
			
		-- -
		wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "01";
			IF_Ri <= "00100";
			IF_Rk <= "00011";
			
		-- and
		wait for Clk_period;	
			FU_type <= "00";
			IF_Fop <= "01";
			IF_Ri <= "00101";
			IF_Rk <= "00100";

		-- not
		wait for Clk_period;	
			FU_type <= "00";
			IF_Fop <= "10";
			IF_Ri <= "00110";
			IF_Rk <= "00101";
			
		-- and
		wait for Clk_period;	
			FU_type <= "00";
			IF_Fop <= "01";
			IF_Ri <= "00111";
			IF_Rk <= "00110";
			
		-- and
		wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "01";
			IF_Ri <= "01000";
			IF_Rk <= "00111";

		-- and
		wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "01";
			IF_Ri <= "01001";
			IF_Rk <= "01000";
						
		-- and
		wait for Clk_period;	
			FU_type <= "00";
			IF_Fop <= "01";
			IF_Ri <= "01010";
			IF_Rk <= "01001";

		-- and
		wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "01";
			IF_Ri <= "01011";
			IF_Rk <= "01010";
			
		-- and
		wait for Clk_period;	
			FU_type <= "01";
			IF_Fop <= "01";
			IF_Ri <= "01100";
			IF_Rk <= "01011";
			
		wait for Clk_period;	
			issue <= '0';
			IF_Ri <= "11110";
			IF_Rk <= "11111";
			
		wait;
   end process;

END;
