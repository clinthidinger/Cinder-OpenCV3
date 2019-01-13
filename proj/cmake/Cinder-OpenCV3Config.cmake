if( NOT TARGET Cinder-OpenCV3 )
	get_filename_component( Cinder-OpenCV3_SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../src" ABSOLUTE )
	get_filename_component( Cinder-OpenCV3_INC_PATH "${CMAKE_CURRENT_LIST_DIR}/../../include" ABSOLUTE )

    SET( BUILD_opencv_apps     OFF CACHE BOOL "" )
    SET( BUILD_opencv_gapi     OFF CACHE BOOL "" )
    SET( BUILD_opencv_highgui  OFF CACHE BOOL "" )
    SET( BUILD_opencv_imgcodec OFF CACHE BOOL "" )
    SET( BUILD_opencv_java_binidings_generator OFF CACHE BOOL "" )
    SET( BUILD_opencv_ml OFF CACHE BOOL "" )
	SET( BUILD_opencv_objdetect OFF CACHE BOOL "" )
	SET( BUILD_opencv_photo OFF CACHE BOOL "" )
	SET( BUILD_opencv_pyhton_bindings_generator OFF CACHE BOOL "" )
	SET( BUILD_opencv_stitching OFF CACHE BOOL "" )
	SET( BUILD_opencv_opencv_world OFF CACHE BOOL "" )

    SET( BUILD_DOCS        OFF CACHE BOOL "" )
	SET( BUILD_PERF_TESTS  OFF CACHE BOOL "" )
	SET( BUILD_TESTS       OFF CACHE BOOL "" )
	SET( BUILD_EXAMPLES    OFF CACHE BOOL "" )
	SET( BUILD_JAVA        OFF CACHE BOOL "" )
	SET( ENABLE_PYLINT     OFF CACHE BOOL "" )
    SET( ENABLE_FLAKE8     OFF CACHE BOOL "" )
    
	add_subdirectory(${Cinder-OpenCV3_SOURCE_PATH}/opencv)

	SET(OPENCV_VCSVERSION 401)
	

	#message(OpenCV_LIBRARIESaaaaaaaaaaaaaaaaaa...........${OpenCV_LIBS})
	#message(bbbbbb${OpenCV_INCLUDE_DIRS})
    #message(ccccccc${OpenCV_LIBS})
    #message(dddddd${OPENCV_LINKER_LIBS})
    #message(eeeee${OpenCV_LIB_COMPONENTS})
    #message(ffffff${STD_OPENCV_LIBS})
    #ocv_git_describe(OPENCV_VCSVERSION "${OpenCV_SOURCE_DIR}")
    #message(ggggg${OPENCV_VCSVERSION})
	#set(OPENCV_DLLVERSION "${OPENCV_VERSION_MAJOR}${OPENCV_VERSION_MINOR}${OPENCV_VERSION_PATCH}")
    #message(OPENCV_DLLVERSION....${OPENCV_DLLVERSION})
    #message(ver..................."${OPENCV_VERSION_MAJOR}${OPENCV_VERSION_MINOR}${OPENCV_VERSION_PATCH}")
    #message(OpenCV_LIB_DIR.............${OpenCV_LIB_DIR})
	#target_compile_definitions(foo PUBLIC FOO)
	#target_include_directories( ${ARG_APP_NAME} INTERFACE ${Cinder-OpenCV3_INC_PATH} )
	#set(Cinder-OpenCV3_INCLUDES ${Cinder-OpenCV3_INC_PATH})
	#target_include_directories( Cinder-OpenCV3 PUBLIC "${CINDER_PATH}/include" ${Cinder-OpenCV3_SOURCE_PATH} )

	set(Cinder-OpenCV3_INCLUDES 
         ${Cinder-OpenCV3_INC_PATH} 
	     ${Cinder-OpenCV3_SOURCE_PATH}
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/include"   
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/core/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/calib3d/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/flann/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/features2d/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/imgcodec/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/imgproc/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/ml/include"
	    "${Cinder-OpenCV3_SOURCE_PATH}/opencv/modules/videoio/include"
	 )

	#list( APPEND Cinder-OpenCV3_LIBRARIES ${OPENCV} ${OpenCL_LIBRARIES} )
	#list( APPEND Cinder-OpenCV3_LIBRARIES ${OPENCV_LINKER_LIBS} ${OpenCL_LIBRARIES} )

if(WIN32)
	list(APPEND Cinder-OpenCV3_INCLUDES "${Cinder-OpenCV3_INC_PATH}/windows" )

	set( OpenCV_LIB_DIR ${CMAKE_CURRENT_BINARY_DIR}/Blocks/Cinder-OpenCV3/src/opencv/lib/$(Configuration) )
	set( ThirdParty_LIB_DIR ${CMAKE_CURRENT_BINARY_DIR}/Blocks/Cinder-OpenCV3/src/opencv/3rdparty/lib/$(Configuration) )

	list( APPEND Cinder-OpenCV3_LIBRARIES 
	     "${OpenCV_LIB_DIR}/opencv_core${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_calib3d${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_flann${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_features2d${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_imgproc${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_video${OPENCV_VCSVERSION}d.lib"
	     "${OpenCV_LIB_DIR}/opencv_videoio${OPENCV_VCSVERSION}d.lib"
	     "${ThirdParty_LIB_DIR}/ippiwd.lib"
	     "${ThirdParty_LIB_DIR}/ittnotifyd.lib"
	     ${CMAKE_CURRENT_BINARY_DIR}/Blocks/Cinder-OpenCV3/src/opencv/3rdparty/ippicv/ippicv_win/icv/lib/intel64/ippicvmt.lib
	      )
endif(WIN32)
endif()
