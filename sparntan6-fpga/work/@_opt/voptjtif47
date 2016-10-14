library verilog;
use verilog.vl_types.all;
entity Coordinator is
    port(
        RESET           : in     vl_logic;
        EN              : in     vl_logic;
        ISCL            : in     vl_logic;
        DSCL            : in     vl_logic;
        DSDA            : inout  vl_logic;
        ISDA            : inout  vl_logic;
        CACK            : out    vl_logic;
        ENC             : out    vl_logic;
        clkA            : out    vl_logic;
        clkB            : out    vl_logic;
        PC              : in     vl_logic_vector(7 downto 0);
        INST            : out    vl_logic_vector(15 downto 0);
        DI              : out    vl_logic_vector(7 downto 0);
        DO              : in     vl_logic_vector(7 downto 0);
        GCLK            : in     vl_logic;
        IICING          : in     vl_logic
    );
end Coordinator;
