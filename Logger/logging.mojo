


struct Logger:
    
    #handlers eventually

    fn error(self, value : String):
        print("ERROR: " + value)

    fn warning(self, value : String):
        print(value)

    fn info(self, value : String):
        print(value)

    fn debug(self, value : String):
        print("DEBUG: " + value)

    fn __init__(inout self):
        pass

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




