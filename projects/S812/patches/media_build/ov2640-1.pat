diff --git a/linux/drivers/media/i2c/Kconfig b/linux/drivers/media/i2c/Kconfig
old mode 100644
new mode 100755
index ceb9184..1cd5a24
--- a/linux/drivers/media/i2c/Kconfig
+++ b/linux/drivers/media/i2c/Kconfig
@@ -515,17 +515,6 @@ config VIDEO_APTINA_PLL
 config VIDEO_SMIAPP_PLL
 	tristate
 
-config VIDEO_OV2640
-	tristate "OmniVision OV2640 sensor support"
-	depends on VIDEO_V4L2 && I2C
-	depends on MEDIA_CAMERA_SUPPORT
-	help
-	  This is a Video4Linux2 sensor-level driver for the OmniVision
-	  OV2640 camera.
-
-	  To compile this driver as a module, choose M here: the
-	  module will be called ov2640.
-
 config VIDEO_OV2659
 	tristate "OmniVision OV2659 sensor support"
 	depends on VIDEO_V4L2 && I2C
