if( NOT TARGET Cinder-OpenCV3 )
	#get_filename_component( NanoVG_SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../deps/nanovg/src" ABSOLUTE )
	get_filename_component( Cinder-OpenCV3_INC_PATH "${CMAKE_CURRENT_LIST_DIR}/../../include" ABSOLUTE )
	#get_filename_component( Cinder-OpenCV3_SOURCE_PATH "${CMAKE_CURRENT_LIST_DIR}/../../src" ABSOLUTE )

	set( Cinder-OpenCV3_HEADERS  #set( CINDER_OPENCV3_INC_FILES
		${Cinder-OpenCV3_INC_PATH}/CinderOpenCV.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/calib3d.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/calib3d/calib3d.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/calib3d/calib3d_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/core.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/affine.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/base.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/bufferpool.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/core_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/core.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/block.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/border_interpolate.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/color.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/common.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/datamov_utils.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/color_detail.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/reduce_key_val.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/reduce.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/transform_detail.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/type_traits_detail.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/detail/vec_distance_detail.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/dynamic_smem.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/emulation.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/filters.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/funcattrib.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/functional.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/limits.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/reduce.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/saturate_cast.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/scan.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/simd_functions.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/transform.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/type_traits.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/utility.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/vec_distance.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/vec_math.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/vec_traits.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/warp_reduce.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/warp_shuffle.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda/warp.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda_stream_accessor.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda_types.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cuda.inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cvdef.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/cvstd.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/eigen.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/ippasync.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/mat.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/mat.inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/matx.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/ocl_genbase.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/ocl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/opengl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/operations.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/optim.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/persistence.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/private.cuda.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/private.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/ptr.inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/sse_utils.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/traits.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/types.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/types_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/utility.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/version.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/core/wimage.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/features2d.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/features2d/features2d.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/flann.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/all_indices.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/allocator.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/any.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/autotuned_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/composite_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/config.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/defines.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/dist.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/dummy.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/dynamic_bitset.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/flann_base.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/general.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/ground_truth.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/hdf5.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/heap.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/hierarchical_clustering_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/index_testing.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/kdtree_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/kdtree_single_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/kmeans_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/linear_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/logger.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/lsh_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/lsh_table.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/matrix.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/miniflann.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/nn_index.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/object_factory.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/params.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/random.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/result_set.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/sampling.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/saving.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/simplex_downhill.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/flann/timer.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/hal.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/hal/defs.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/hal/intrin_cpp.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/hal/intrin_sse.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/hal/intrin.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/highgui.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/highgui/highgui_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/highgui/highgui.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgcodecs.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgcodecs/imgcodecs_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgcodecs/imgcodecs.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgcodecs/ios.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgproc/imgproc_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgproc/imgproc.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgproc/types_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/imgproc.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/ml.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/ml/ml.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/objdetect.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/objdetect/detection_based_tracker.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/objdetect/objdetect_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/objdetect/objdetect.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/opencv_modules.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/opencv.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/photo.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/photo/cuda.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/photo/photo_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/photo/photo.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/emdL1.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/hist_cost.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/shape_distance.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/shape_transformer.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/emdL1.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/hist_cost.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/shape_distance.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/shape_transformer.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/shape/shape.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/autocalib.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/blenders.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/camera.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/exposure_compensate.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/matchers.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/motion_estimators.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/seam_finders.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/timelapsers.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/util_inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/util.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/warpers_inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/detail/warpers.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/stitching/warpers.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/superres.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/superres/optical_flow.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/video.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/video/background_segm.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/video/tracking_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/video/tracking.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/video/video.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videoio.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videoio/cap_ios.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/videoio/videoio_c.h
		${Cinder-OpenCV3_INC_PATH}/opencv2/videoio/videoio.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/deblurring.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/fast_marching_inl.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/fast_marching.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/frame_source.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/global_motion.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/inpainting.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/log.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/motion_core.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/motion_stabilizing.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/optical_flow.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/outlier_rejection.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/ring_buffer.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/stabilizer.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/videostab/wobble_suppression.hpp
		${Cinder-OpenCV3_INC_PATH}/opencv2/world.hpp
		${Cinder-OpenCV3_INC_PATH}/CinderOpenCV.h
	)

	foreach(FILE ${Cinder-OpenCV3_HEADERS}) 
	    # Get the directory of the source file
	    get_filename_component(PARENT_DIR "${FILE}" DIRECTORY)
	    # Remove common directory prefix to make the group
	    string(REPLACE "${Cinder-OpenCV3_INC_PATH}" "" GROUP "${PARENT_DIR}")
	    # Make sure we are using windows slashes
	    string(REPLACE "/" "\\" GROUP "${GROUP}")
	    source_group("${GROUP}" FILES "${FILE}")
	endforeach()

	#add_library( Cinder-OpenCV3 INTERFACE )
	#target_sources( Cinder-OpenCV3 INTERFACE ${Cinder-OpenCV3_INCLUDES} )
	#target_include_directories( Cinder-OpenCV3 INTERFACE ${Cinder-OpenCV3_INC_PATH} )
	#target_link_libraries( ${ARG_APP_NAME} INTERFACE Cinder-OpenCV3 )

	#target_include_directories( ${ARG_APP_NAME} INTERFACE ${Cinder-OpenCV3_INC_PATH} )

	set(Cinder-OpenCV3_INCLUDES ${Cinder-OpenCV3_INC_PATH})

	find_package( ZLIB REQUIRED )
	if ( ZLIB_FOUND )
	    include_directories( ${ZLIB_INCLUDE_DIRS} )
	    target_link_libraries( ${ARG_APP_NAME} ${ZLIB_LIBRARIES} )
	endif( ZLIB_FOUND )


if( CINDER_MAC )
	#set( Cinder-OpenCV3_HEADERS
	#	${Cinder-OpenCV3_HEADERS}
	#	${Cinder-OpenCV3_INC_PATH}/macosx/opencv2/cvconfig.h
	#	${Cinder-OpenCV3_INC_PATH}/macosx/opencv2/opencv_modules.hpp
	#)

	find_package(OpenCL REQUIRED)
	message( ${OpenCL_LIBRARIES} )
	if (NOT OpenCL_FOUND)
	    message(FATAL_ERROR "OpenCL not found")
	endif()
	find_library( OPENCV NAMES opencv2 PATHS "${CMAKE_CURRENT_LIST_DIR}/../../lib/macosx" CMAKE_FIND_APPBUNDLE ONLY )
	if (NOT OPENCV)
	    message(FATAL_ERROR "OpenCV not found")
	endif()



	list( APPEND Cinder-OpenCV3_LIBRARIES ${OPENCV} ${OpenCL_LIBRARIES} )

	#[[
	#add_library( Cinder-OpenCV3 MODULE )
	set( CINDER_OPENCV_LIB_PATH ${CMAKE_CURRENT_LIST_DIR}/../../lib/macosx )
	list( APPEND Cinder-OpenCV3_LIBRARIES
		#${CINDER_OPENCV3_INC_FILES}
		${CINDER_OPENCV_LIB_PATH}/libippicv.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_calib3d.a
		${CINDER_OPENCV_LIB_PATH}/libopencv_core.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_features2d.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_flann.a
		${CINDER_OPENCV_LIB_PATH}/libopencv_hal.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_highgui.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_imgcodecs.a
		${CINDER_OPENCV_LIB_PATH}/libopencv_imgproc.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_ml.a
		${CINDER_OPENCV_LIB_PATH}/libopencv_objdetect.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_photo.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_shape.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_stitching.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_superres.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_ts.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_video.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_videoio.a
		#${CINDER_OPENCV_LIB_PATH}/libopencv_videostab.a
	)
	]]
		#${CINDER_OPENCV_LIB_PATH}/opencv_core
		#${CINDER_OPENCV_LIB_PATH}/opencv_imgproc
		#${CINDER_OPENCV_LIB_PATH}/opencv_hal
		#${CINDER_OPENCV_LIB_PATH}/ippicv
		#z
endif()
	


	#target_include_directories( Cinder-OpenCV3 PUBLIC "${CINDER_PATH}/include" ${Cinder-OpenCV3_INC_PATH} )
	
endif()