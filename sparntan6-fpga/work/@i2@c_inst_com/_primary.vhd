library verilog;
use verilog.vl_types.all;
entity I2C_inst_com is
    generic(
        F100K           : vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0)
    );
    port(
        CLK             : in     vl_logic;
        RSTn            : in     vl_logic;
        Start_Sig       : in     vl_logic_vector(1 downto 0);
        Addr_Sig        : in     vl_logic_vector(7 downto 0);
        WrData          : in     vl_logic_vector(15 downto 0);
        RdData          : out    vl_logic_vector(15 downto 0);
        Done_Sig        : out    vl_logic;
        SCL             : out    vl_logic;
        SDA             : inout  vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of F100K : constant is 1;
end I2C_inst_com;
