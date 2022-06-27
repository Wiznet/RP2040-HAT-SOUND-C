add_library(pico_pdm_microphone INTERFACE)

target_sources(pico_pdm_microphone INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/pdm_microphone.c
    ${CMAKE_CURRENT_LIST_DIR}/OpenPDM2PCM/OpenPDMFilter.c
)

target_include_directories(pico_pdm_microphone INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/include
)

pico_generate_pio_header(pico_pdm_microphone ${CMAKE_CURRENT_LIST_DIR}/pdm_microphone.pio)

target_link_libraries(pico_pdm_microphone INTERFACE pico_stdlib hardware_dma hardware_pio)


add_library(pico_analog_microphone INTERFACE)

target_sources(pico_analog_microphone INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/analog_microphone.c
)

target_include_directories(pico_analog_microphone INTERFACE
    ${CMAKE_CURRENT_LIST_DIR}/include
)

target_link_libraries(pico_analog_microphone INTERFACE pico_stdlib hardware_adc hardware_dma)
