

# enum LogLevels
alias ERROR   = 0
alias WARNING = 1
alias INFO    = 2
alias DEBUG   = 3

struct Logger:
    
    var _log_level : Int8
    #handlers eventually

    fn error(self, value : String):
        print("ERROR: " + value)

    fn warning(self, value : String):
        if( self._log_level >= WARNING ):
            print(value)

    fn info(self, value : String):
        if( self._log_level >= INFO ):
            print(value)

    fn debug(self, value : String):
        print("Lev: " + str(self._log_level)) 
        if( self._log_level >= DEBUG ):
            print(value)

    fn set_log_level(inout self, level : Int8):
        print("setting loglevel to " + str(level))
        self._log_level = level
    
    fn __init__(inout self, level : Int8 = DEBUG):
        self._log_level = level

    fn __del__(owned self):
        pass

var default_logger : Logger = Logger() # init not called... 
var init : Bool = False

fn error(s : String):
    if(not init):
        initBasicLogging()
    default_logger.error(s)

fn warning(s : String):
    if(not init):
        initBasicLogging()
    default_logger.warning(s)

fn info(s : String):
    if(not init):
        initBasicLogging()
    default_logger.info(s)

fn debug(s : String):
    if(not init):
        initBasicLogging()
    default_logger.debug(s)

fn basicConfig(max_log_level : Int8 ):
    default_logger.set_log_level(max_log_level)

fn initBasicLogging():
    default_logger.__init__() # __init__ not called if variable is on top scope...

