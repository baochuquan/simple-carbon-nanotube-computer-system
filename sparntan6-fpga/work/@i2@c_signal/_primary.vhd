library verilog;
use verilog.vl_types.all;
entity I2C_signal is
    port(
        gclk            : in     vl_logic;
        sck             : in     vl_logic;
        sda             : inout  vl_logic;
        sck_fall        : out    vl_logic;
        sck_rise        : out    vl_logic;
        sck_high        : out    vl_logic;
        sck_low         : out    vl_logic;
        sda_fall        : out    vl_logic;
        sda_rise        : out    vl_logic;
        sda_high        : out    vl_logic;
        sda_low         : out    vl_logic
    );
end I2C_signal;
