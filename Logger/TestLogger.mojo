# TDD for the win

import logging  


fn advanced_logging():
    pass

# fn complex_logging():
#     logger = logging.getLogger(__name__)

#     c_handler = logging.StreamHandler()
#     f_handler = logging.FileHandler('file.log')
#     c_handler.setLevel(logging.WARNING)
#     f_handler.setLevel(logging.ERROR)

#     # Eventually add the formats

#     # Add handlers to the logger
#     logger.addHandler(c_handler)
#     logger.addHandler(f_handler)

#     logger.warning('This is a warning')
#     logger.error('This is an error')

fn simple_logging():
    logging.debug('This will get logged')    
    # logging.basicConfig(level=logging.info)
    # logging.error('An error that will get logged')
    # logging.debug('This will NOT get logged')

fn main() -> None:
    simple_logging()

