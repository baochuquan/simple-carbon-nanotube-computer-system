library verilog;
use verilog.vl_types.all;
entity Decoder is
    port(
        PC              : in     vl_logic_vector(7 downto 0);
        INST            : out    vl_logic_vector(15 downto 0);
        DI              : out    vl_logic_vector(7 downto 0);
        DO              : in     vl_logic_vector(7 downto 0);
        CMDEND          : out    vl_logic;
        \END\           : in     vl_logic;
        IRAM            : in     vl_logic_vector(15 downto 0);
        DRAM_W          : out    vl_logic_vector(7 downto 0);
        DRAM_R          : in     vl_logic_vector(7 downto 0);
        I_addr          : out    vl_logic_vector(7 downto 0);
        D_addr_R        : out    vl_logic_vector(7 downto 0);
        D_addr_W        : out    vl_logic_vector(7 downto 0);
        clkC            : in     vl_logic;
        clkD            : in     vl_logic;
        clkE            : in     vl_logic;
        W               : out    vl_logic;
        R               : out    vl_logic
    );
end Decoder;
