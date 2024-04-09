

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
        if( self._log_level > WARNING ):
            print(value)

    fn info(self, value : String):
        if( self._log_level > INFO ):
            print(value)

    fn debug(self, value : String):
        if( self._log_level > DEBUG ):
            print(value)

    fn set_log_level(inout self, level : Int8):
        self._log_level = level
    
    fn __init__(inout self):
        self._log_level = DEBUG

    fn __del__(owned self):
        pass

var default_logger = Logger() 
# Returns logger Object
# GetLogger(string)

fn error(s : String):
    default_logger.error(s)

fn warning(s : String):
    default_logger.warning(s)


fn info(s : String):
    default_logger.info(s)

fn debug(s : String):
    default_logger.debug(s)

fn basicConfig(max_log_level : Int8 ):
    default_logger.set_log_level(DEBUG)
