library verilog;
use verilog.vl_types.all;
entity IRAM is
    generic(
        S_idle          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        S_start         : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S_Index         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        S_Data          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        S_stop          : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        HardWriteAddress: vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        HardReadAddress : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        gclk            : in     vl_logic;
        sck             : in     vl_logic;
        sda             : inout  vl_logic;
        iicing          : in     vl_logic;
        wea             : in     vl_logic;
        iaddr           : in     vl_logic_vector(7 downto 0);
        idataout        : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S_idle : constant is 1;
    attribute mti_svvh_generic_type of S_start : constant is 1;
    attribute mti_svvh_generic_type of S_Index : constant is 1;
    attribute mti_svvh_generic_type of S_Data : constant is 1;
    attribute mti_svvh_generic_type of S_stop : constant is 1;
    attribute mti_svvh_generic_type of HardWriteAddress : constant is 1;
    attribute mti_svvh_generic_type of HardReadAddress : constant is 1;
end IRAM;
