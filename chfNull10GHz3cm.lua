-- CADFEKO v2021-2100 (x64)
app = cf.GetApplication()
project = app.Project

-- Added variable "W"
W = project.Variables:Add("W",0.003)

-- Created geometry: rectangle "Rectangle1"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle2"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle2"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle2= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle3"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle3"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle3= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle4"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle4"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle4= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle5"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle5"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle5= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle6"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle6"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle6= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle7"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle7"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle7= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle8"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle8"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle8= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle9"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle9"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle9= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle10"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle10"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle10= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle11"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle11"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle11= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle12"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle12"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle12= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle13"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle13"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle13= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle14"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle14"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle14= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle15"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle15"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle15= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle16"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle16"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle16= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle17"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle17"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle17= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle18"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle18"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle18= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle19"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle19"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle19= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle20"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle20"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle20= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle21"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle21"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle21= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle22"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle22"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle22= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle23"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle23"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle23= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle24"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle24"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle24= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle25"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle25"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle25= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle26"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle26"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle26= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle27"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle27"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle27= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle28"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle28"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle28= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle29"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle29"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle29= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle30"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle30"
properties.Origin.U = "-0.0015"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle30= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle31"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle31"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle31= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle32"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle32"
properties.Origin.U = "-0.0015"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle32= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle33"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle33"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle33= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle34"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle34"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle34= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle35"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle35"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle35= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle36"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle36"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle36= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle37"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle37"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle37= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle38"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle38"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle38= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle39"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle39"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle39= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle40"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle40"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle40= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle41"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle41"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle41= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle42"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle42"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle42= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle43"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle43"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle43= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle44"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle44"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle44= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle45"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle45"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle45= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle46"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle46"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle46= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle47"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle47"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle47= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle48"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle48"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle48= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle49"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle49"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle49= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle50"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle50"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle50= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle51"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle51"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle51= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle52"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle52"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle52= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle53"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle53"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle53= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle54"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle54"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle54= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle55"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle55"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle55= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle56"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle56"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle56= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle57"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle57"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle57= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle58"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle58"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle58= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle59"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle59"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle59= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle60"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle60"
properties.Origin.U = "-0.0015"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle60= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle61"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle61"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle61= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle62"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle62"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle62= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle63"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle63"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle63= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle64"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle64"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle64= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle65"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle65"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle65= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle66"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle66"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle66= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle67"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle67"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle67= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle68"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle68"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle68= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle69"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle69"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle69= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle70"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle70"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle70= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle71"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle71"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle71= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle72"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle72"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle72= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle73"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle73"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle73= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle74"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle74"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle74= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle75"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle75"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle75= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle76"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle76"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle76= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle77"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle77"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle77= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle78"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle78"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle78= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle79"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle79"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle79= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle80"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle80"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle80= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle81"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle81"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle81= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle82"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle82"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle82= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle83"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle83"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle83= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle84"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle84"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle84= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle85"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle85"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle85= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle86"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle86"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle86= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle87"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle87"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle87= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle88"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle88"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle88= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle89"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle89"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle89= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle90"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle90"
properties.Origin.U = "-0.00145"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle90= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle91"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle91"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle91= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle92"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle92"
properties.Origin.U = "-0.00145"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle92= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle93"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle93"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle93= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle94"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle94"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle94= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle95"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle95"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle95= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle96"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle96"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle96= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle97"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle97"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle97= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle98"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle98"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle98= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle99"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle99"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle99= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle100"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle100"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle100= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle101"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle101"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle101= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle102"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle102"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle102= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle103"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle103"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle103= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle104"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle104"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle104= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle105"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle105"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle105= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle106"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle106"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle106= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle107"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle107"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle107= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle108"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle108"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle108= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle109"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle109"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle109= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle110"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle110"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle110= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle111"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle111"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle111= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle112"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle112"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle112= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle113"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle113"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle113= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle114"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle114"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle114= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle115"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle115"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle115= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle116"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle116"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle116= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle117"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle117"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle117= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle118"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle118"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle118= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle119"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle119"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle119= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle120"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle120"
properties.Origin.U = "-0.00145"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle120= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle121"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle121"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle121= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle122"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle122"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle122= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle123"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle123"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle123= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle124"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle124"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle124= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle125"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle125"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle125= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle126"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle126"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle126= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle127"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle127"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle127= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle128"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle128"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle128= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle129"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle129"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle129= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle130"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle130"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle130= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle131"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle131"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle131= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle132"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle132"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle132= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle133"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle133"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle133= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle134"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle134"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle134= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle135"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle135"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle135= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle136"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle136"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle136= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle137"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle137"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle137= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle138"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle138"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle138= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle139"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle139"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle139= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle140"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle140"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle140= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle141"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle141"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle141= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle142"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle142"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle142= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle143"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle143"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle143= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle144"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle144"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle144= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle145"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle145"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle145= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle146"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle146"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle146= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle147"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle147"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle147= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle148"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle148"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle148= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle149"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle149"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle149= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle150"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle150"
properties.Origin.U = "-0.0014"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle150= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle151"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle151"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle151= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle152"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle152"
properties.Origin.U = "-0.0014"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle152= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle153"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle153"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle153= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle154"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle154"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle154= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle155"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle155"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle155= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle156"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle156"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle156= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle157"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle157"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle157= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle158"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle158"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle158= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle159"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle159"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle159= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle160"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle160"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle160= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle161"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle161"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle161= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle162"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle162"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle162= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle163"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle163"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle163= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle164"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle164"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle164= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle165"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle165"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle165= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle166"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle166"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle166= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle167"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle167"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle167= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle168"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle168"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle168= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle169"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle169"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle169= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle170"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle170"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle170= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle171"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle171"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle171= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle172"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle172"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle172= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle173"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle173"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle173= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle174"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle174"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle174= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle175"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle175"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle175= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle176"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle176"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle176= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle177"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle177"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle177= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle178"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle178"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle178= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle179"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle179"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle179= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle180"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle180"
properties.Origin.U = "-0.0014"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle180= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle181"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle181"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle181= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle182"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle182"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle182= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle183"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle183"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle183= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle184"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle184"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle184= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle185"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle185"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle185= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle186"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle186"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle186= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle187"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle187"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle187= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle188"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle188"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle188= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle189"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle189"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle189= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle190"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle190"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle190= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle191"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle191"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle191= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle192"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle192"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle192= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle193"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle193"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle193= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle194"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle194"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle194= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle195"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle195"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle195= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle196"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle196"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle196= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle197"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle197"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle197= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle198"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle198"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle198= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle199"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle199"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle199= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle200"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle200"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle200= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle201"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle201"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle201= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle202"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle202"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle202= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle203"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle203"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle203= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle204"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle204"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle204= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle205"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle205"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle205= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle206"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle206"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle206= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle207"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle207"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle207= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle208"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle208"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle208= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle209"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle209"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle209= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle210"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle210"
properties.Origin.U = "-0.00135"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle210= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle211"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle211"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle211= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle212"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle212"
properties.Origin.U = "-0.00135"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle212= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle213"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle213"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle213= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle214"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle214"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle214= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle215"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle215"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle215= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle216"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle216"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle216= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle217"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle217"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle217= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle218"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle218"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle218= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle219"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle219"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle219= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle220"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle220"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle220= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle221"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle221"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle221= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle222"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle222"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle222= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle223"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle223"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle223= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle224"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle224"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle224= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle225"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle225"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle225= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle226"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle226"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle226= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle227"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle227"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle227= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle228"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle228"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle228= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle229"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle229"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle229= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle230"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle230"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle230= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle231"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle231"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle231= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle232"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle232"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle232= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle233"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle233"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle233= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle234"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle234"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle234= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle235"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle235"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle235= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle236"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle236"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle236= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle237"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle237"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle237= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle238"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle238"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle238= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle239"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle239"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle239= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle240"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle240"
properties.Origin.U = "-0.00135"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle240= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle241"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle241"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle241= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle242"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle242"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle242= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle243"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle243"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle243= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle244"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle244"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle244= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle245"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle245"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle245= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle246"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle246"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle246= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle247"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle247"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle247= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle248"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle248"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle248= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle249"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle249"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle249= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle250"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle250"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle250= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle251"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle251"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle251= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle252"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle252"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle252= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle253"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle253"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle253= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle254"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle254"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle254= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle255"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle255"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle255= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle256"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle256"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle256= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle257"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle257"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle257= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle258"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle258"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle258= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle259"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle259"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle259= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle260"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle260"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle260= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle261"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle261"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle261= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle262"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle262"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle262= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle263"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle263"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle263= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle264"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle264"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle264= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle265"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle265"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle265= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle266"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle266"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle266= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle267"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle267"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle267= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle268"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle268"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle268= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle269"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle269"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle269= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle270"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle270"
properties.Origin.U = "-0.0013"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle270= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle271"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle271"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle271= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle272"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle272"
properties.Origin.U = "-0.0013"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle272= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle273"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle273"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle273= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle274"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle274"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle274= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle275"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle275"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle275= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle276"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle276"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle276= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle277"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle277"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle277= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle278"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle278"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle278= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle279"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle279"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle279= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle280"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle280"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle280= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle281"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle281"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle281= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle282"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle282"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle282= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle283"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle283"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle283= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle284"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle284"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle284= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle285"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle285"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle285= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle286"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle286"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle286= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle287"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle287"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle287= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle288"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle288"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle288= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle289"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle289"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle289= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle290"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle290"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle290= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle291"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle291"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle291= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle292"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle292"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle292= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle293"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle293"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle293= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle294"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle294"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle294= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle295"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle295"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle295= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle296"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle296"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle296= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle297"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle297"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle297= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle298"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle298"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle298= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle299"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle299"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle299= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle300"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle300"
properties.Origin.U = "-0.0013"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle300= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle301"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle301"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle301= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle302"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle302"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle302= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle303"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle303"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle303= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle304"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle304"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle304= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle305"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle305"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle305= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle306"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle306"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle306= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle307"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle307"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle307= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle308"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle308"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle308= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle309"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle309"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle309= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle310"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle310"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle310= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle311"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle311"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle311= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle312"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle312"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle312= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle313"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle313"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle313= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle314"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle314"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle314= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle315"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle315"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle315= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle316"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle316"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle316= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle317"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle317"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle317= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle318"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle318"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle318= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle319"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle319"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle319= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle320"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle320"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle320= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle321"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle321"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle321= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle322"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle322"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle322= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle323"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle323"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle323= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle324"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle324"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle324= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle325"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle325"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle325= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle326"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle326"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle326= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle327"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle327"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle327= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle328"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle328"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle328= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle329"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle329"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle329= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle330"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle330"
properties.Origin.U = "-0.00125"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle330= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle331"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle331"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle331= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle332"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle332"
properties.Origin.U = "-0.00125"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle332= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle333"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle333"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle333= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle334"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle334"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle334= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle335"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle335"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle335= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle336"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle336"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle336= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle337"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle337"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle337= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle338"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle338"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle338= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle339"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle339"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle339= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle340"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle340"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle340= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle341"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle341"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle341= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle342"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle342"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle342= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle343"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle343"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle343= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle344"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle344"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle344= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle345"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle345"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle345= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle346"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle346"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle346= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle347"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle347"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle347= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle348"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle348"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle348= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle349"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle349"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle349= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle350"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle350"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle350= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle351"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle351"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle351= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle352"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle352"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle352= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle353"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle353"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle353= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle354"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle354"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle354= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle355"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle355"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle355= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle356"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle356"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle356= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle357"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle357"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle357= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle358"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle358"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle358= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle359"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle359"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle359= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle360"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle360"
properties.Origin.U = "-0.00125"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle360= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle361"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle361"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle361= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle362"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle362"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle362= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle363"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle363"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle363= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle364"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle364"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle364= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle365"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle365"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle365= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle366"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle366"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle366= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle367"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle367"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle367= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle368"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle368"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle368= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle369"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle369"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle369= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle370"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle370"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle370= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle371"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle371"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle371= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle372"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle372"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle372= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle373"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle373"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle373= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle374"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle374"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle374= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle375"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle375"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle375= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle376"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle376"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle376= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle377"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle377"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle377= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle378"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle378"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle378= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle379"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle379"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle379= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle380"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle380"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle380= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle381"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle381"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle381= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle382"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle382"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle382= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle383"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle383"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle383= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle384"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle384"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle384= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle385"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle385"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle385= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle386"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle386"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle386= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle387"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle387"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle387= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle388"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle388"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle388= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle389"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle389"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle389= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle390"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle390"
properties.Origin.U = "-0.0012"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle390= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle391"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle391"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle391= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle392"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle392"
properties.Origin.U = "-0.0012"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle392= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle393"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle393"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle393= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle394"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle394"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle394= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle395"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle395"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle395= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle396"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle396"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle396= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle397"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle397"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle397= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle398"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle398"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle398= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle399"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle399"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle399= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle400"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle400"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle400= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle401"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle401"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle401= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle402"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle402"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle402= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle403"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle403"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle403= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle404"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle404"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle404= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle405"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle405"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle405= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle406"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle406"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle406= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle407"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle407"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle407= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle408"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle408"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle408= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle409"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle409"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle409= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle410"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle410"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle410= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle411"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle411"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle411= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle412"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle412"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle412= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle413"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle413"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle413= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle414"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle414"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle414= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle415"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle415"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle415= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle416"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle416"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle416= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle417"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle417"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle417= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle418"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle418"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle418= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle419"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle419"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle419= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle420"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle420"
properties.Origin.U = "-0.0012"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle420= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle421"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle421"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle421= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle422"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle422"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle422= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle423"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle423"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle423= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle424"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle424"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle424= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle425"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle425"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle425= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle426"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle426"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle426= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle427"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle427"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle427= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle428"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle428"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle428= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle429"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle429"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle429= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle430"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle430"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle430= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle431"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle431"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle431= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle432"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle432"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle432= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle433"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle433"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle433= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle434"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle434"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle434= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle435"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle435"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle435= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle436"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle436"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle436= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle437"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle437"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle437= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle438"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle438"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle438= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle439"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle439"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle439= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle440"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle440"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle440= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle441"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle441"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle441= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle442"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle442"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle442= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle443"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle443"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle443= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle444"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle444"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle444= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle445"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle445"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle445= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle446"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle446"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle446= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle447"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle447"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle447= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle448"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle448"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle448= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle449"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle449"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle449= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle450"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle450"
properties.Origin.U = "-0.00115"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle450= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle451"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle451"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle451= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle452"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle452"
properties.Origin.U = "-0.00115"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle452= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle453"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle453"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle453= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle454"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle454"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle454= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle455"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle455"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle455= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle456"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle456"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle456= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle457"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle457"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle457= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle458"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle458"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle458= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle459"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle459"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle459= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle460"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle460"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle460= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle461"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle461"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle461= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle462"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle462"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle462= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle463"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle463"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle463= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle464"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle464"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle464= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle465"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle465"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle465= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle466"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle466"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle466= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle467"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle467"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle467= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle468"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle468"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle468= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle469"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle469"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle469= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle470"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle470"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle470= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle471"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle471"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle471= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle472"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle472"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle472= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle473"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle473"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle473= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle474"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle474"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle474= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle475"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle475"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle475= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle476"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle476"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle476= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle477"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle477"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle477= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle478"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle478"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle478= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle479"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle479"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle479= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle480"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle480"
properties.Origin.U = "-0.00115"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle480= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle481"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle481"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle481= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle482"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle482"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle482= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle483"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle483"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle483= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle484"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle484"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle484= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle485"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle485"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle485= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle486"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle486"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle486= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle487"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle487"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle487= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle488"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle488"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle488= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle489"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle489"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle489= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle490"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle490"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle490= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle491"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle491"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle491= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle492"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle492"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle492= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle493"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle493"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle493= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle494"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle494"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle494= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle495"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle495"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle495= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle496"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle496"
properties.Origin.U = "-0.0011"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle496= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle497"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle497"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle497= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle498"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle498"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle498= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle499"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle499"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle499= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle500"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle500"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle500= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle501"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle501"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle501= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle502"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle502"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle502= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle503"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle503"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle503= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle504"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle504"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle504= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle505"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle505"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle505= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle506"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle506"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle506= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle507"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle507"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle507= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle508"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle508"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle508= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle509"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle509"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle509= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle510"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle510"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle510= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle511"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle511"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle511= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle512"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle512"
properties.Origin.U = "-0.0011"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle512= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle513"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle513"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle513= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle514"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle514"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle514= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle515"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle515"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle515= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle516"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle516"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle516= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle517"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle517"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle517= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle518"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle518"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle518= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle519"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle519"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle519= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle520"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle520"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle520= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle521"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle521"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle521= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle522"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle522"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle522= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle523"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle523"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle523= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle524"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle524"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle524= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle525"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle525"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle525= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle526"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle526"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle526= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle527"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle527"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle527= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle528"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle528"
properties.Origin.U = "-0.00105"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle528= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle529"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle529"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle529= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle530"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle530"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle530= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle531"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle531"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle531= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle532"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle532"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle532= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle533"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle533"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle533= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle534"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle534"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle534= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle535"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle535"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle535= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle536"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle536"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle536= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle537"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle537"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle537= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle538"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle538"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle538= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle539"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle539"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle539= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle540"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle540"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle540= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle541"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle541"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle541= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle542"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle542"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle542= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle543"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle543"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle543= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle544"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle544"
properties.Origin.U = "-0.00105"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle544= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle545"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle545"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle545= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle546"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle546"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle546= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle547"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle547"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle547= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle548"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle548"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle548= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle549"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle549"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle549= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle550"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle550"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle550= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle551"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle551"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle551= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle552"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle552"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle552= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle553"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle553"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle553= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle554"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle554"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle554= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle555"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle555"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle555= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle556"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle556"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle556= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle557"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle557"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle557= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle558"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle558"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle558= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle559"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle559"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle559= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle560"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle560"
properties.Origin.U = "-0.001"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle560= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle561"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle561"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle561= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle562"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle562"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle562= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle563"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle563"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle563= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle564"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle564"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle564= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle565"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle565"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle565= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle566"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle566"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle566= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle567"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle567"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle567= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle568"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle568"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle568= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle569"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle569"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle569= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle570"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle570"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle570= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle571"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle571"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle571= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle572"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle572"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle572= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle573"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle573"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle573= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle574"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle574"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle574= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle575"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle575"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle575= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle576"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle576"
properties.Origin.U = "-0.001"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle576= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle577"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle577"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle577= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle578"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle578"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle578= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle579"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle579"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle579= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle580"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle580"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle580= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle581"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle581"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle581= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle582"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle582"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle582= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle583"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle583"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle583= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle584"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle584"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle584= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle585"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle585"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle585= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle586"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle586"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle586= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle587"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle587"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle587= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle588"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle588"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle588= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle589"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle589"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle589= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle590"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle590"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle590= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle591"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle591"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle591= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle592"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle592"
properties.Origin.U = "-0.00095"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle592= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle593"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle593"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle593= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle594"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle594"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle594= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle595"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle595"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle595= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle596"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle596"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle596= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle597"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle597"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle597= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle598"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle598"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle598= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle599"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle599"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle599= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle600"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle600"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle600= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle601"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle601"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle601= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle602"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle602"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle602= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle603"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle603"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle603= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle604"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle604"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle604= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle605"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle605"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle605= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle606"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle606"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle606= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle607"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle607"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle607= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle608"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle608"
properties.Origin.U = "-0.00095"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle608= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle609"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle609"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle609= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle610"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle610"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle610= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle611"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle611"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle611= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle612"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle612"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle612= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle613"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle613"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle613= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle614"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle614"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle614= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle615"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle615"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle615= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle616"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle616"
properties.Origin.U = "-0.0009"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle616= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle617"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle617"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle617= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle618"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle618"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle618= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle619"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle619"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle619= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle620"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle620"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle620= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle621"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle621"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle621= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle622"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle622"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle622= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle623"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle623"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle623= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle624"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle624"
properties.Origin.U = "-0.0009"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle624= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle625"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle625"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle625= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle626"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle626"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle626= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle627"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle627"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle627= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle628"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle628"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle628= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle629"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle629"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle629= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle630"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle630"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle630= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle631"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle631"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle631= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle632"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle632"
properties.Origin.U = "-0.00085"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle632= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle633"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle633"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle633= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle634"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle634"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle634= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle635"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle635"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle635= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle636"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle636"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle636= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle637"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle637"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle637= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle638"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle638"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle638= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle639"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle639"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle639= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle640"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle640"
properties.Origin.U = "-0.00085"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle640= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle641"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle641"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle641= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle642"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle642"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle642= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle643"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle643"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle643= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle644"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle644"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle644= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle645"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle645"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle645= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle646"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle646"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle646= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle647"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle647"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle647= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle648"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle648"
properties.Origin.U = "-0.0008"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle648= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle649"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle649"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle649= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle650"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle650"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle650= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle651"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle651"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle651= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle652"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle652"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle652= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle653"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle653"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle653= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle654"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle654"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle654= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle655"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle655"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle655= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle656"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle656"
properties.Origin.U = "-0.0008"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle656= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle657"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle657"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle657= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle658"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle658"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle658= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle659"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle659"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle659= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle660"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle660"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle660= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle661"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle661"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle661= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle662"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle662"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle662= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle663"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle663"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle663= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle664"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle664"
properties.Origin.U = "-0.00075"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle664= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle665"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle665"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle665= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle666"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle666"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle666= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle667"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle667"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle667= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle668"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle668"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle668= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle669"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle669"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle669= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle670"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle670"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle670= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle671"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle671"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle671= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle672"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle672"
properties.Origin.U = "-0.00075"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle672= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle673"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle673"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle673= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle674"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle674"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle674= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle675"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle675"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle675= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle676"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle676"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle676= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle677"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle677"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle677= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle678"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle678"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle678= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle679"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle679"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle679= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle680"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle680"
properties.Origin.U = "-0.0007"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle680= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle681"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle681"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle681= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle682"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle682"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle682= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle683"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle683"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle683= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle684"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle684"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle684= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle685"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle685"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle685= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle686"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle686"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle686= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle687"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle687"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle687= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle688"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle688"
properties.Origin.U = "-0.0007"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle688= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle689"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle689"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle689= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle690"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle690"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle690= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle691"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle691"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle691= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle692"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle692"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle692= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle693"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle693"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle693= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle694"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle694"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle694= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle695"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle695"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle695= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle696"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle696"
properties.Origin.U = "-0.00065"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle696= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle697"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle697"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle697= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle698"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle698"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle698= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle699"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle699"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle699= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle700"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle700"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle700= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle701"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle701"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle701= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle702"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle702"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle702= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle703"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle703"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle703= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle704"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle704"
properties.Origin.U = "-0.00065"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle704= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle705"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle705"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle705= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle706"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle706"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle706= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle707"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle707"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle707= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle708"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle708"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle708= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle709"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle709"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle709= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle710"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle710"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle710= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle711"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle711"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle711= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle712"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle712"
properties.Origin.U = "-0.0006"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle712= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle713"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle713"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle713= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle714"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle714"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle714= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle715"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle715"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle715= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle716"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle716"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle716= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle717"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle717"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle717= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle718"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle718"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle718= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle719"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle719"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle719= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle720"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle720"
properties.Origin.U = "-0.0006"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle720= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle721"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle721"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle721= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle722"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle722"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle722= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle723"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle723"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle723= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle724"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle724"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle724= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle725"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle725"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle725= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle726"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle726"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle726= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle727"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle727"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle727= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle728"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle728"
properties.Origin.U = "-0.00055"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle728= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle729"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle729"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle729= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle730"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle730"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle730= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle731"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle731"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle731= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle732"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle732"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle732= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle733"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle733"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle733= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle734"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle734"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle734= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle735"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle735"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle735= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle736"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle736"
properties.Origin.U = "-0.00055"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle736= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle737"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle737"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle737= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle738"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle738"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle738= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle739"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle739"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle739= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle740"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle740"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle740= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle741"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle741"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle741= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle742"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle742"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle742= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle743"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle743"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle743= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle744"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle744"
properties.Origin.U = "-0.0005"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle744= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle745"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle745"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle745= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle746"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle746"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle746= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle747"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle747"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle747= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle748"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle748"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle748= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle749"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle749"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle749= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle750"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle750"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle750= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle751"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle751"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle751= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle752"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle752"
properties.Origin.U = "-0.0005"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle752= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle753"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle753"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle753= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle754"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle754"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle754= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle755"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle755"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle755= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle756"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle756"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle756= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle757"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle757"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle757= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle758"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle758"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle758= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle759"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle759"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle759= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle760"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle760"
properties.Origin.U = "-0.00045"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle760= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle761"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle761"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle761= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle762"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle762"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle762= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle763"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle763"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle763= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle764"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle764"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle764= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle765"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle765"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle765= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle766"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle766"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle766= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle767"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle767"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle767= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle768"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle768"
properties.Origin.U = "-0.00045"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle768= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle769"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle769"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle769= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle770"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle770"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle770= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle771"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle771"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle771= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle772"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle772"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle772= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle773"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle773"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle773= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle774"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle774"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle774= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle775"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle775"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle775= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle776"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle776"
properties.Origin.U = "-0.0004"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle776= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle777"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle777"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle777= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle778"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle778"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle778= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle779"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle779"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle779= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle780"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle780"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle780= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle781"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle781"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle781= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle782"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle782"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle782= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle783"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle783"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle783= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle784"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle784"
properties.Origin.U = "-0.0004"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle784= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle785"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle785"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle785= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle786"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle786"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle786= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle787"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle787"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle787= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle788"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle788"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle788= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle789"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle789"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle789= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle790"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle790"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle790= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle791"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle791"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle791= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle792"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle792"
properties.Origin.U = "-0.00035"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle792= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle793"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle793"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle793= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle794"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle794"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle794= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle795"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle795"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle795= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle796"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle796"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle796= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle797"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle797"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle797= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle798"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle798"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle798= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle799"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle799"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle799= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle800"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle800"
properties.Origin.U = "-0.00035"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle800= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle801"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle801"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle801= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle802"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle802"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle802= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle803"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle803"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle803= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle804"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle804"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle804= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle805"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle805"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle805= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle806"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle806"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle806= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle807"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle807"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle807= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle808"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle808"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle808= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle809"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle809"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle809= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle810"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle810"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle810= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle811"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle811"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle811= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle812"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle812"
properties.Origin.U = "-0.0003"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle812= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle813"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle813"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle813= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle814"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle814"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle814= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle815"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle815"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle815= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle816"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle816"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle816= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle817"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle817"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle817= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle818"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle818"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle818= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle819"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle819"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle819= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle820"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle820"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle820= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle821"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle821"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle821= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle822"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle822"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle822= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle823"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle823"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle823= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle824"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle824"
properties.Origin.U = "-0.0003"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle824= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle825"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle825"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle825= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle826"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle826"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle826= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle827"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle827"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle827= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle828"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle828"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle828= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle829"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle829"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle829= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle830"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle830"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle830= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle831"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle831"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle831= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle832"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle832"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle832= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle833"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle833"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle833= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle834"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle834"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle834= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle835"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle835"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle835= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle836"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle836"
properties.Origin.U = "-0.00025"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle836= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle837"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle837"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle837= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle838"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle838"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle838= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle839"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle839"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle839= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle840"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle840"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle840= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle841"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle841"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle841= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle842"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle842"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle842= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle843"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle843"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle843= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle844"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle844"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle844= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle845"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle845"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle845= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle846"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle846"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle846= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle847"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle847"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle847= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle848"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle848"
properties.Origin.U = "-0.00025"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle848= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle849"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle849"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle849= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle850"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle850"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle850= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle851"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle851"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle851= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle852"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle852"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle852= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle853"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle853"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle853= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle854"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle854"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle854= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle855"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle855"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle855= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle856"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle856"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle856= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle857"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle857"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle857= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle858"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle858"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle858= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle859"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle859"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle859= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle860"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle860"
properties.Origin.U = "-0.0002"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle860= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle861"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle861"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle861= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle862"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle862"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle862= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle863"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle863"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle863= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle864"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle864"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle864= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle865"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle865"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle865= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle866"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle866"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle866= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle867"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle867"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle867= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle868"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle868"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle868= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle869"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle869"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle869= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle870"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle870"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle870= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle871"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle871"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle871= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle872"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle872"
properties.Origin.U = "-0.0002"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle872= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle873"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle873"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle873= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle874"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle874"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle874= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle875"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle875"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle875= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle876"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle876"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle876= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle877"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle877"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle877= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle878"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle878"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle878= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle879"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle879"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle879= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle880"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle880"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle880= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle881"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle881"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle881= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle882"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle882"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle882= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle883"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle883"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle883= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle884"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle884"
properties.Origin.U = "-0.00015"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle884= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle885"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle885"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle885= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle886"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle886"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle886= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle887"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle887"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle887= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle888"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle888"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle888= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle889"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle889"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle889= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle890"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle890"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle890= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle891"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle891"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle891= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle892"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle892"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle892= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle893"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle893"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle893= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle894"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle894"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle894= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle895"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle895"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle895= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle896"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle896"
properties.Origin.U = "-0.00015"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle896= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle897"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle897"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle897= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle898"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle898"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle898= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle899"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle899"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle899= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle900"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle900"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle900= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle901"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle901"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle901= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle902"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle902"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle902= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle903"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle903"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle903= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle904"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle904"
properties.Origin.U = "-0.0001"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle904= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle905"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle905"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle905= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle906"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle906"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle906= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle907"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle907"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle907= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle908"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle908"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle908= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle909"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle909"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle909= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle910"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle910"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle910= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle911"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle911"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle911= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle912"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle912"
properties.Origin.U = "-0.0001"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle912= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle913"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle913"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle913= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle914"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle914"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle914= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle915"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle915"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle915= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle916"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle916"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle916= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle917"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle917"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle917= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle918"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle918"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle918= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle919"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle919"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle919= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle920"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle920"
properties.Origin.U = "-5e-05"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle920= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle921"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle921"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle921= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle922"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle922"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle922= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle923"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle923"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle923= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle924"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle924"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle924= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle925"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle925"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle925= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle926"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle926"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle926= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle927"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle927"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle927= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle928"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle928"
properties.Origin.U = "-5e-05"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle928= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle929"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle929"
properties.Origin.U = "0"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle929= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle930"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle930"
properties.Origin.U = "0"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle930= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle931"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle931"
properties.Origin.U = "0"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle931= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle932"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle932"
properties.Origin.U = "0"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle932= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle933"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle933"
properties.Origin.U = "0"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle933= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle934"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle934"
properties.Origin.U = "0"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle934= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle935"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle935"
properties.Origin.U = "0"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle935= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle936"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle936"
properties.Origin.U = "0"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle936= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle937"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle937"
properties.Origin.U = "0"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle937= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle938"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle938"
properties.Origin.U = "0"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle938= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle939"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle939"
properties.Origin.U = "0"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle939= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle940"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle940"
properties.Origin.U = "0"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle940= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle941"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle941"
properties.Origin.U = "0"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle941= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle942"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle942"
properties.Origin.U = "0"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle942= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle943"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle943"
properties.Origin.U = "0"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle943= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle944"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle944"
properties.Origin.U = "0"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle944= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle945"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle945"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle945= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle946"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle946"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle946= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle947"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle947"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle947= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle948"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle948"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle948= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle949"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle949"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle949= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle950"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle950"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle950= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle951"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle951"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle951= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle952"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle952"
properties.Origin.U = "5e-05"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle952= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle953"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle953"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle953= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle954"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle954"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle954= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle955"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle955"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle955= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle956"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle956"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle956= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle957"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle957"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle957= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle958"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle958"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle958= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle959"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle959"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle959= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle960"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle960"
properties.Origin.U = "5e-05"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle960= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle961"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle961"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle961= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle962"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle962"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle962= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle963"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle963"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle963= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle964"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle964"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle964= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle965"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle965"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle965= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle966"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle966"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle966= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle967"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle967"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle967= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle968"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle968"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle968= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle969"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle969"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle969= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle970"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle970"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle970= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle971"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle971"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle971= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle972"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle972"
properties.Origin.U = "0.0001"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle972= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle973"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle973"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle973= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle974"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle974"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle974= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle975"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle975"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle975= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle976"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle976"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle976= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle977"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle977"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle977= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle978"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle978"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle978= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle979"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle979"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle979= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle980"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle980"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle980= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle981"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle981"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle981= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle982"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle982"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle982= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle983"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle983"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle983= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle984"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle984"
properties.Origin.U = "0.0001"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle984= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle985"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle985"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle985= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle986"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle986"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle986= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle987"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle987"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle987= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle988"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle988"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle988= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle989"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle989"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle989= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle990"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle990"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle990= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle991"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle991"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle991= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle992"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle992"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle992= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle993"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle993"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle993= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle994"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle994"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle994= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle995"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle995"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle995= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle996"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle996"
properties.Origin.U = "0.00015"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle996= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle997"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle997"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle997= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle998"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle998"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle998= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle999"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle999"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle999= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1000"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1000"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1000= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1001"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1001"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1001= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1002"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1002"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1002= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1003"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1003"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1003= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1004"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1004"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1004= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1005"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1005"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1005= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1006"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1006"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1006= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1007"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1007"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1007= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1008"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1008"
properties.Origin.U = "0.00015"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1008= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1009"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1009"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1009= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1010"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1010"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1010= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1011"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1011"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1011= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1012"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1012"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1012= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1013"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1013"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1013= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1014"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1014"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1014= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1015"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1015"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1015= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1016"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1016"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1016= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1017"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1017"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1017= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1018"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1018"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1018= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1019"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1019"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1019= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1020"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1020"
properties.Origin.U = "0.0002"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1020= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1021"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1021"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1021= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1022"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1022"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1022= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1023"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1023"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1023= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1024"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1024"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1024= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1025"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1025"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1025= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1026"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1026"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1026= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1027"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1027"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1027= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1028"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1028"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1028= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1029"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1029"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1029= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1030"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1030"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1030= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1031"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1031"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1031= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1032"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1032"
properties.Origin.U = "0.0002"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1032= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1033"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1033"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1033= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1034"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1034"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1034= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1035"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1035"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1035= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1036"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1036"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1036= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1037"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1037"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1037= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1038"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1038"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1038= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1039"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1039"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1039= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1040"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1040"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1040= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1041"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1041"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1041= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1042"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1042"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1042= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1043"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1043"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1043= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1044"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1044"
properties.Origin.U = "0.00025"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1044= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1045"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1045"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1045= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1046"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1046"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1046= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1047"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1047"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1047= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1048"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1048"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1048= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1049"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1049"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1049= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1050"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1050"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1050= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1051"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1051"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1051= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1052"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1052"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1052= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1053"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1053"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1053= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1054"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1054"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1054= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1055"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1055"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1055= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1056"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1056"
properties.Origin.U = "0.00025"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1056= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1057"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1057"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1057= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1058"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1058"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1058= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1059"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1059"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1059= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1060"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1060"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1060= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1061"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1061"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1061= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1062"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1062"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1062= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1063"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1063"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1063= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1064"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1064"
properties.Origin.U = "0.0003"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1064= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1065"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1065"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1065= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1066"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1066"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1066= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1067"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1067"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1067= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1068"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1068"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1068= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1069"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1069"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1069= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1070"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1070"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1070= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1071"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1071"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1071= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1072"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1072"
properties.Origin.U = "0.0003"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1072= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1073"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1073"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1073= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1074"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1074"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1074= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1075"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1075"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1075= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1076"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1076"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1076= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1077"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1077"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1077= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1078"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1078"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1078= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1079"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1079"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1079= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1080"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1080"
properties.Origin.U = "0.00035"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1080= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1081"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1081"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1081= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1082"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1082"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1082= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1083"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1083"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1083= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1084"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1084"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1084= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1085"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1085"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1085= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1086"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1086"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1086= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1087"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1087"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1087= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1088"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1088"
properties.Origin.U = "0.00035"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1088= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1089"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1089"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1089= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1090"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1090"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1090= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1091"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1091"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1091= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1092"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1092"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1092= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1093"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1093"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1093= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1094"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1094"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1094= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1095"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1095"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1095= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1096"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1096"
properties.Origin.U = "0.0004"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1096= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1097"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1097"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1097= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1098"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1098"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1098= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1099"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1099"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1099= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1100"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1100"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1100= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1101"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1101"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1101= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1102"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1102"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1102= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1103"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1103"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1103= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1104"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1104"
properties.Origin.U = "0.0004"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1104= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1105"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1105"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1105= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1106"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1106"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1106= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1107"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1107"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1107= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1108"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1108"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1108= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1109"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1109"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1109= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1110"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1110"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1110= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1111"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1111"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1111= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1112"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1112"
properties.Origin.U = "0.00045"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1112= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1113"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1113"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1113= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1114"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1114"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1114= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1115"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1115"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1115= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1116"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1116"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1116= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1117"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1117"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1117= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1118"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1118"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1118= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1119"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1119"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1119= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1120"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1120"
properties.Origin.U = "0.00045"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1120= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1121"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1121"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1121= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1122"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1122"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1122= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1123"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1123"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1123= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1124"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1124"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1124= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1125"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1125"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1125= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1126"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1126"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1126= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1127"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1127"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1127= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1128"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1128"
properties.Origin.U = "0.0005"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1128= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1129"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1129"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1129= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1130"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1130"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1130= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1131"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1131"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1131= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1132"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1132"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1132= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1133"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1133"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1133= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1134"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1134"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1134= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1135"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1135"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1135= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1136"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1136"
properties.Origin.U = "0.0005"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1136= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1137"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1137"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1137= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1138"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1138"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1138= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1139"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1139"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1139= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1140"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1140"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1140= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1141"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1141"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1141= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1142"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1142"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1142= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1143"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1143"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1143= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1144"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1144"
properties.Origin.U = "0.00055"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1144= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1145"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1145"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1145= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1146"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1146"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1146= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1147"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1147"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1147= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1148"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1148"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1148= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1149"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1149"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1149= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1150"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1150"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1150= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1151"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1151"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1151= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1152"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1152"
properties.Origin.U = "0.00055"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1152= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1153"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1153"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1153= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1154"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1154"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1154= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1155"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1155"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1155= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1156"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1156"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1156= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1157"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1157"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1157= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1158"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1158"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1158= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1159"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1159"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1159= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1160"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1160"
properties.Origin.U = "0.0006"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1160= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1161"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1161"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1161= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1162"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1162"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1162= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1163"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1163"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1163= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1164"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1164"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1164= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1165"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1165"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1165= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1166"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1166"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1166= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1167"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1167"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1167= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1168"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1168"
properties.Origin.U = "0.0006"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1168= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1169"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1169"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1169= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1170"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1170"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1170= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1171"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1171"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1171= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1172"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1172"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1172= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1173"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1173"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1173= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1174"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1174"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1174= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1175"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1175"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1175= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1176"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1176"
properties.Origin.U = "0.00065"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1176= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1177"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1177"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1177= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1178"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1178"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1178= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1179"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1179"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1179= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1180"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1180"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1180= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1181"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1181"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1181= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1182"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1182"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1182= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1183"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1183"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1183= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1184"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1184"
properties.Origin.U = "0.00065"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1184= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1185"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1185"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1185= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1186"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1186"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1186= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1187"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1187"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1187= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1188"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1188"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1188= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1189"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1189"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1189= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1190"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1190"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1190= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1191"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1191"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1191= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1192"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1192"
properties.Origin.U = "0.0007"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1192= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1193"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1193"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1193= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1194"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1194"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1194= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1195"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1195"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1195= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1196"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1196"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1196= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1197"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1197"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1197= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1198"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1198"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1198= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1199"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1199"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1199= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1200"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1200"
properties.Origin.U = "0.0007"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1200= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1201"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1201"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1201= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1202"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1202"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1202= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1203"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1203"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1203= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1204"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1204"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1204= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1205"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1205"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1205= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1206"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1206"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1206= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1207"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1207"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1207= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1208"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1208"
properties.Origin.U = "0.00075"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1208= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1209"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1209"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1209= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1210"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1210"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1210= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1211"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1211"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1211= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1212"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1212"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1212= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1213"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1213"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1213= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1214"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1214"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1214= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1215"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1215"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1215= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1216"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1216"
properties.Origin.U = "0.00075"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1216= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1217"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1217"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1217= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1218"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1218"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1218= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1219"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1219"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1219= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1220"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1220"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1220= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1221"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1221"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1221= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1222"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1222"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1222= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1223"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1223"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1223= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1224"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1224"
properties.Origin.U = "0.0008"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1224= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1225"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1225"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1225= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1226"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1226"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1226= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1227"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1227"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1227= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1228"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1228"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1228= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1229"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1229"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1229= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1230"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1230"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1230= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1231"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1231"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1231= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1232"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1232"
properties.Origin.U = "0.0008"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1232= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1233"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1233"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1233= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1234"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1234"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1234= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1235"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1235"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1235= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1236"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1236"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1236= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1237"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1237"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1237= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1238"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1238"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1238= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1239"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1239"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1239= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1240"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1240"
properties.Origin.U = "0.00085"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1240= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1241"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1241"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1241= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1242"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1242"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1242= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1243"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1243"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1243= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1244"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1244"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1244= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1245"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1245"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1245= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1246"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1246"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1246= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1247"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1247"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1247= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1248"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1248"
properties.Origin.U = "0.00085"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1248= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1249"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1249"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1249= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1250"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1250"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1250= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1251"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1251"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1251= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1252"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1252"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1252= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1253"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1253"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1253= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1254"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1254"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1254= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1255"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1255"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1255= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1256"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1256"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1256= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1257"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1257"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1257= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1258"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1258"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1258= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1259"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1259"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1259= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1260"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1260"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1260= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1261"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1261"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1261= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1262"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1262"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1262= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1263"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1263"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1263= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1264"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1264"
properties.Origin.U = "0.0009"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1264= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1265"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1265"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1265= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1266"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1266"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1266= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1267"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1267"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1267= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1268"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1268"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1268= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1269"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1269"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1269= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1270"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1270"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1270= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1271"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1271"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1271= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1272"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1272"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1272= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1273"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1273"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1273= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1274"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1274"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1274= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1275"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1275"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1275= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1276"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1276"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1276= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1277"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1277"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1277= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1278"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1278"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1278= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1279"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1279"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1279= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1280"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1280"
properties.Origin.U = "0.0009"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1280= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1281"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1281"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1281= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1282"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1282"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1282= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1283"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1283"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1283= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1284"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1284"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1284= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1285"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1285"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1285= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1286"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1286"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1286= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1287"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1287"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1287= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1288"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1288"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1288= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1289"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1289"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1289= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1290"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1290"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1290= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1291"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1291"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1291= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1292"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1292"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1292= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1293"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1293"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1293= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1294"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1294"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1294= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1295"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1295"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1295= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1296"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1296"
properties.Origin.U = "0.00095"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1296= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1297"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1297"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1297= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1298"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1298"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1298= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1299"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1299"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1299= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1300"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1300"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1300= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1301"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1301"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1301= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1302"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1302"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1302= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1303"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1303"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1303= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1304"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1304"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1304= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1305"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1305"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1305= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1306"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1306"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1306= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1307"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1307"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1307= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1308"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1308"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1308= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1309"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1309"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1309= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1310"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1310"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1310= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1311"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1311"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1311= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1312"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1312"
properties.Origin.U = "0.00095"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1312= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1313"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1313"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1313= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1314"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1314"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1314= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1315"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1315"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1315= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1316"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1316"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1316= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1317"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1317"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1317= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1318"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1318"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1318= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1319"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1319"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1319= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1320"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1320"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1320= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1321"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1321"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1321= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1322"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1322"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1322= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1323"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1323"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1323= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1324"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1324"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1324= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1325"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1325"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1325= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1326"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1326"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1326= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1327"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1327"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1327= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1328"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1328"
properties.Origin.U = "0.001"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1328= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1329"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1329"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1329= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1330"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1330"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1330= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1331"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1331"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1331= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1332"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1332"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1332= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1333"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1333"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1333= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1334"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1334"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1334= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1335"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1335"
properties.Origin.U = "0.001"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1335= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1336"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1336"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1336= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1337"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1337"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1337= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1338"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1338"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1338= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1339"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1339"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1339= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1340"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1340"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1340= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1341"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1341"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1341= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1342"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1342"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1342= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1343"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1343"
properties.Origin.U = "0.001"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1343= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1344"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1344"
properties.Origin.U = "0.001"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1344= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1345"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1345"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1345= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1346"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1346"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1346= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1347"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1347"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1347= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1348"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1348"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1348= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1349"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1349"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1349= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1350"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1350"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1350= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1351"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1351"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1351= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1352"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1352"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1352= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1353"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1353"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1353= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1354"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1354"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1354= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1355"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1355"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1355= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1356"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1356"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1356= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1357"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1357"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1357= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1358"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1358"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1358= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1359"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1359"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1359= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1360"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1360"
properties.Origin.U = "0.00105"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1360= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1361"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1361"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1361= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1362"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1362"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1362= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1363"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1363"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1363= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1364"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1364"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1364= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1365"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1365"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1365= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1366"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1366"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1366= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1367"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1367"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1367= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1368"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1368"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1368= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1369"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1369"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1369= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1370"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1370"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1370= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1371"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1371"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1371= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1372"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1372"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1372= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1373"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1373"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1373= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1374"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1374"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1374= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1375"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1375"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1375= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1376"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1376"
properties.Origin.U = "0.00105"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1376= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1377"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1377"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1377= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1378"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1378"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1378= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1379"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1379"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1379= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1380"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1380"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1380= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1381"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1381"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1381= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1382"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1382"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1382= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1383"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1383"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1383= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1384"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1384"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1384= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1385"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1385"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1385= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1386"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1386"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1386= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1387"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1387"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1387= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1388"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1388"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1388= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1389"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1389"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1389= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1390"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1390"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1390= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1391"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1391"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1391= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1392"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1392"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1392= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1393"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1393"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1393= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1394"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1394"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1394= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1395"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1395"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1395= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1396"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1396"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1396= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1397"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1397"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1397= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1398"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1398"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1398= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1399"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1399"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1399= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1400"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1400"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1400= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1401"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1401"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1401= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1402"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1402"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1402= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1403"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1403"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1403= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1404"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1404"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1404= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1405"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1405"
properties.Origin.U = "0.0011"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1405= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1406"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1406"
properties.Origin.U = "0.0011"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1406= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1407"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1407"
properties.Origin.U = "0.0011"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1407= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1408"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1408"
properties.Origin.U = "0.0011"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1408= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1409"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1409"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1409= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1410"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1410"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1410= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1411"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1411"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1411= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1412"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1412"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1412= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1413"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1413"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1413= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1414"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1414"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1414= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1415"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1415"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1415= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1416"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1416"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1416= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1417"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1417"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1417= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1418"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1418"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1418= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1419"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1419"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1419= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1420"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1420"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1420= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1421"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1421"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1421= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1422"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1422"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1422= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1423"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1423"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1423= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1424"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1424"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1424= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1425"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1425"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1425= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1426"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1426"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1426= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1427"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1427"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1427= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1428"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1428"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1428= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1429"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1429"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1429= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1430"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1430"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1430= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1431"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1431"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1431= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1432"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1432"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1432= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1433"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1433"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1433= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1434"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1434"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1434= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1435"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1435"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1435= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1436"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1436"
properties.Origin.U = "0.0011"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1436= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1437"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1437"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1437= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1438"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1438"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1438= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1439"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1439"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1439= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1440"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1440"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1440= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1441"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1441"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1441= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1442"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1442"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1442= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1443"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1443"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1443= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1444"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1444"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1444= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1445"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1445"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1445= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1446"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1446"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1446= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1447"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1447"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1447= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1448"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1448"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1448= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1449"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1449"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1449= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1450"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1450"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1450= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1451"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1451"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1451= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1452"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1452"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1452= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1453"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1453"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1453= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1454"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1454"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1454= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1455"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1455"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1455= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1456"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1456"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1456= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1457"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1457"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1457= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1458"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1458"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1458= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1459"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1459"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1459= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1460"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1460"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1460= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1461"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1461"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1461= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1462"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1462"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1462= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1463"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1463"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1463= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1464"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1464"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1464= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1465"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1465"
properties.Origin.U = "0.00115"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1465= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1466"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1466"
properties.Origin.U = "0.00115"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1466= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1467"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1467"
properties.Origin.U = "0.00115"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1467= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1468"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1468"
properties.Origin.U = "0.00115"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1468= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1469"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1469"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1469= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1470"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1470"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1470= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1471"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1471"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1471= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1472"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1472"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1472= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1473"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1473"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1473= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1474"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1474"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1474= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1475"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1475"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1475= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1476"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1476"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1476= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1477"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1477"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1477= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1478"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1478"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1478= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1479"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1479"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1479= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1480"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1480"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1480= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1481"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1481"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1481= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1482"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1482"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1482= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1483"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1483"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1483= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1484"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1484"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1484= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1485"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1485"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1485= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1486"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1486"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1486= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1487"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1487"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1487= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1488"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1488"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1488= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1489"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1489"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1489= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1490"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1490"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1490= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1491"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1491"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1491= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1492"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1492"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1492= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1493"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1493"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1493= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1494"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1494"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1494= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1495"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1495"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1495= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1496"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1496"
properties.Origin.U = "0.00115"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1496= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1497"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1497"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1497= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1498"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1498"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1498= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1499"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1499"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1499= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1500"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1500"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1500= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1501"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1501"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1501= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1502"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1502"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1502= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1503"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1503"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1503= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1504"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1504"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1504= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1505"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1505"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1505= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1506"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1506"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1506= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1507"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1507"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1507= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1508"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1508"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1508= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1509"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1509"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1509= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1510"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1510"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1510= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1511"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1511"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1511= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1512"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1512"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1512= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1513"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1513"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1513= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1514"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1514"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1514= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1515"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1515"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1515= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1516"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1516"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1516= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1517"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1517"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1517= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1518"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1518"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1518= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1519"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1519"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1519= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1520"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1520"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1520= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1521"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1521"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1521= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1522"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1522"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1522= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1523"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1523"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1523= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1524"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1524"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1524= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1525"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1525"
properties.Origin.U = "0.0012"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1525= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1526"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1526"
properties.Origin.U = "0.0012"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1526= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1527"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1527"
properties.Origin.U = "0.0012"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1527= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1528"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1528"
properties.Origin.U = "0.0012"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1528= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1529"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1529"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1529= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1530"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1530"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1530= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1531"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1531"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1531= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1532"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1532"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1532= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1533"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1533"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1533= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1534"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1534"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1534= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1535"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1535"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1535= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1536"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1536"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1536= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1537"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1537"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1537= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1538"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1538"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1538= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1539"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1539"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1539= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1540"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1540"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1540= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1541"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1541"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1541= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1542"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1542"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1542= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1543"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1543"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1543= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1544"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1544"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1544= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1545"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1545"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1545= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1546"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1546"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1546= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1547"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1547"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1547= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1548"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1548"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1548= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1549"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1549"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1549= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1550"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1550"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1550= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1551"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1551"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1551= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1552"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1552"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1552= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1553"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1553"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1553= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1554"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1554"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1554= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1555"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1555"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1555= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1556"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1556"
properties.Origin.U = "0.0012"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1556= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1557"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1557"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1557= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1558"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1558"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1558= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1559"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1559"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1559= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1560"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1560"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1560= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1561"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1561"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1561= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1562"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1562"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1562= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1563"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1563"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1563= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1564"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1564"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1564= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1565"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1565"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1565= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1566"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1566"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1566= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1567"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1567"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1567= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1568"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1568"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1568= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1569"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1569"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1569= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1570"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1570"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1570= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1571"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1571"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1571= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1572"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1572"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1572= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1573"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1573"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1573= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1574"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1574"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1574= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1575"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1575"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1575= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1576"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1576"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1576= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1577"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1577"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1577= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1578"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1578"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1578= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1579"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1579"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1579= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1580"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1580"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1580= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1581"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1581"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1581= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1582"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1582"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1582= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1583"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1583"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1583= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1584"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1584"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1584= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1585"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1585"
properties.Origin.U = "0.00125"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1585= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1586"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1586"
properties.Origin.U = "0.00125"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1586= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1587"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1587"
properties.Origin.U = "0.00125"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1587= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1588"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1588"
properties.Origin.U = "0.00125"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1588= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1589"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1589"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1589= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1590"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1590"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1590= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1591"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1591"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1591= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1592"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1592"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1592= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1593"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1593"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1593= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1594"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1594"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1594= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1595"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1595"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1595= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1596"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1596"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1596= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1597"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1597"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1597= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1598"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1598"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1598= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1599"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1599"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1599= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1600"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1600"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1600= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1601"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1601"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1601= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1602"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1602"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1602= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1603"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1603"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1603= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1604"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1604"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1604= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1605"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1605"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1605= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1606"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1606"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1606= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1607"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1607"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1607= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1608"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1608"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1608= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1609"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1609"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1609= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1610"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1610"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1610= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1611"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1611"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1611= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1612"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1612"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1612= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1613"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1613"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1613= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1614"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1614"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1614= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1615"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1615"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1615= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1616"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1616"
properties.Origin.U = "0.00125"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1616= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1617"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1617"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1617= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1618"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1618"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1618= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1619"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1619"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1619= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1620"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1620"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1620= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1621"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1621"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1621= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1622"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1622"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1622= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1623"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1623"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1623= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1624"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1624"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1624= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1625"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1625"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1625= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1626"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1626"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1626= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1627"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1627"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1627= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1628"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1628"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1628= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1629"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1629"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1629= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1630"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1630"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1630= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1631"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1631"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1631= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1632"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1632"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1632= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1633"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1633"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1633= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1634"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1634"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1634= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1635"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1635"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1635= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1636"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1636"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1636= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1637"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1637"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1637= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1638"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1638"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1638= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1639"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1639"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1639= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1640"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1640"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1640= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1641"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1641"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1641= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1642"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1642"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1642= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1643"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1643"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1643= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1644"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1644"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1644= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1645"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1645"
properties.Origin.U = "0.0013"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1645= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1646"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1646"
properties.Origin.U = "0.0013"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1646= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1647"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1647"
properties.Origin.U = "0.0013"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1647= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1648"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1648"
properties.Origin.U = "0.0013"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1648= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1649"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1649"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1649= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1650"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1650"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1650= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1651"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1651"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1651= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1652"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1652"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1652= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1653"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1653"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1653= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1654"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1654"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1654= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1655"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1655"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1655= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1656"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1656"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1656= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1657"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1657"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1657= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1658"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1658"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1658= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1659"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1659"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1659= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1660"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1660"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1660= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1661"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1661"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1661= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1662"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1662"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1662= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1663"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1663"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1663= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1664"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1664"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1664= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1665"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1665"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1665= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1666"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1666"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1666= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1667"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1667"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1667= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1668"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1668"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1668= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1669"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1669"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1669= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1670"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1670"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1670= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1671"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1671"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1671= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1672"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1672"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1672= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1673"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1673"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1673= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1674"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1674"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1674= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1675"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1675"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1675= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1676"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1676"
properties.Origin.U = "0.0013"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1676= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1677"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1677"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1677= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1678"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1678"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1678= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1679"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1679"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1679= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1680"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1680"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1680= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1681"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1681"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1681= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1682"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1682"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1682= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1683"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1683"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1683= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1684"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1684"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1684= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1685"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1685"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1685= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1686"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1686"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1686= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1687"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1687"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1687= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1688"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1688"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1688= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1689"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1689"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1689= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1690"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1690"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1690= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1691"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1691"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1691= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1692"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1692"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1692= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1693"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1693"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1693= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1694"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1694"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1694= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1695"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1695"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1695= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1696"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1696"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1696= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1697"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1697"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1697= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1698"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1698"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1698= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1699"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1699"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1699= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1700"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1700"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1700= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1701"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1701"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1701= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1702"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1702"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1702= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1703"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1703"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1703= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1704"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1704"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1704= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1705"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1705"
properties.Origin.U = "0.00135"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1705= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1706"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1706"
properties.Origin.U = "0.00135"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1706= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1707"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1707"
properties.Origin.U = "0.00135"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1707= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1708"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1708"
properties.Origin.U = "0.00135"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1708= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1709"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1709"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1709= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1710"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1710"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1710= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1711"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1711"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1711= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1712"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1712"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1712= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1713"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1713"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1713= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1714"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1714"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1714= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1715"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1715"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1715= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1716"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1716"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1716= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1717"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1717"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1717= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1718"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1718"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1718= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1719"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1719"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1719= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1720"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1720"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1720= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1721"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1721"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1721= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1722"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1722"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1722= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1723"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1723"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1723= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1724"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1724"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1724= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1725"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1725"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1725= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1726"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1726"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1726= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1727"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1727"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1727= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1728"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1728"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1728= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1729"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1729"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1729= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1730"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1730"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1730= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1731"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1731"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1731= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1732"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1732"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1732= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1733"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1733"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1733= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1734"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1734"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1734= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1735"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1735"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1735= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1736"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1736"
properties.Origin.U = "0.00135"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1736= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1737"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1737"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1737= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1738"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1738"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1738= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1739"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1739"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1739= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1740"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1740"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1740= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1741"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1741"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1741= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1742"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1742"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1742= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1743"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1743"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1743= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1744"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1744"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1744= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1745"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1745"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1745= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1746"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1746"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1746= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1747"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1747"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1747= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1748"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1748"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1748= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1749"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1749"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1749= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1750"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1750"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1750= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1751"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1751"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1751= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1752"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1752"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1752= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1753"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1753"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1753= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1754"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1754"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1754= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1755"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1755"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1755= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1756"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1756"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1756= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1757"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1757"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1757= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1758"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1758"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1758= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1759"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1759"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1759= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1760"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1760"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1760= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1761"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1761"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1761= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1762"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1762"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1762= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1763"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1763"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1763= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1764"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1764"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1764= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1765"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1765"
properties.Origin.U = "0.0014"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1765= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1766"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1766"
properties.Origin.U = "0.0014"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1766= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1767"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1767"
properties.Origin.U = "0.0014"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1767= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1768"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1768"
properties.Origin.U = "0.0014"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1768= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1769"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1769"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1769= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1770"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1770"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1770= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1771"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1771"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1771= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1772"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1772"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1772= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1773"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1773"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1773= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1774"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1774"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1774= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1775"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1775"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1775= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1776"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1776"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1776= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1777"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1777"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1777= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1778"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1778"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1778= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1779"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1779"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1779= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1780"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1780"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1780= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1781"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1781"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1781= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1782"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1782"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1782= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1783"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1783"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1783= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1784"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1784"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1784= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1785"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1785"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1785= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1786"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1786"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1786= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1787"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1787"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1787= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1788"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1788"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1788= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1789"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1789"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1789= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1790"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1790"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1790= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1791"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1791"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1791= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1792"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1792"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1792= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1793"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1793"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1793= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1794"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1794"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1794= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1795"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1795"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1795= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1796"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1796"
properties.Origin.U = "0.0014"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1796= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1797"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1797"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0015"
properties.Width = "5e-05"
Rectangle1797= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1798"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1798"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00145"
properties.Width = "5e-05"
Rectangle1798= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1799"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1799"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0014"
properties.Width = "5e-05"
Rectangle1799= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1800"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1800"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00135"
properties.Width = "5e-05"
Rectangle1800= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1801"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1801"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0013"
properties.Width = "5e-05"
Rectangle1801= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1802"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1802"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00125"
properties.Width = "5e-05"
Rectangle1802= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1803"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1803"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0012"
properties.Width = "5e-05"
Rectangle1803= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1804"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1804"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00115"
properties.Width = "5e-05"
Rectangle1804= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1805"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1805"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0011"
properties.Width = "5e-05"
Rectangle1805= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1806"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1806"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00105"
properties.Width = "5e-05"
Rectangle1806= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1807"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1807"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.001"
properties.Width = "5e-05"
Rectangle1807= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1808"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1808"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00095"
properties.Width = "5e-05"
Rectangle1808= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1809"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1809"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0009"
properties.Width = "5e-05"
Rectangle1809= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1810"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1810"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00085"
properties.Width = "5e-05"
Rectangle1810= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1811"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1811"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0008"
properties.Width = "5e-05"
Rectangle1811= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1812"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1812"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00075"
properties.Width = "5e-05"
Rectangle1812= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1813"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1813"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0007"
properties.Width = "5e-05"
Rectangle1813= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1814"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1814"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00065"
properties.Width = "5e-05"
Rectangle1814= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1815"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1815"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0006"
properties.Width = "5e-05"
Rectangle1815= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1816"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1816"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00055"
properties.Width = "5e-05"
Rectangle1816= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1817"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1817"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0005"
properties.Width = "5e-05"
Rectangle1817= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1818"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1818"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00045"
properties.Width = "5e-05"
Rectangle1818= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1819"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1819"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0004"
properties.Width = "5e-05"
Rectangle1819= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1820"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1820"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00035"
properties.Width = "5e-05"
Rectangle1820= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1821"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1821"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0003"
properties.Width = "5e-05"
Rectangle1821= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1822"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1822"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00025"
properties.Width = "5e-05"
Rectangle1822= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1823"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1823"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0002"
properties.Width = "5e-05"
Rectangle1823= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1824"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1824"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.00015"
properties.Width = "5e-05"
Rectangle1824= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1825"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1825"
properties.Origin.U = "0.00145"
properties.Origin.V = "-0.0001"
properties.Width = "5e-05"
Rectangle1825= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1826"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1826"
properties.Origin.U = "0.00145"
properties.Origin.V = "-5e-05"
properties.Width = "5e-05"
Rectangle1826= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1827"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1827"
properties.Origin.U = "0.00145"
properties.Origin.V = "0"
properties.Width = "5e-05"
Rectangle1827= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1828"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1828"
properties.Origin.U = "0.00145"
properties.Origin.V = "5e-05"
properties.Width = "5e-05"
Rectangle1828= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1829"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1829"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0001"
properties.Width = "5e-05"
Rectangle1829= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1830"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1830"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00015"
properties.Width = "5e-05"
Rectangle1830= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1831"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1831"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0002"
properties.Width = "5e-05"
Rectangle1831= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1832"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1832"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00025"
properties.Width = "5e-05"
Rectangle1832= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1833"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1833"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0003"
properties.Width = "5e-05"
Rectangle1833= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1834"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1834"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00035"
properties.Width = "5e-05"
Rectangle1834= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1835"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1835"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0004"
properties.Width = "5e-05"
Rectangle1835= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1836"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1836"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00045"
properties.Width = "5e-05"
Rectangle1836= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1837"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1837"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0005"
properties.Width = "5e-05"
Rectangle1837= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1838"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1838"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00055"
properties.Width = "5e-05"
Rectangle1838= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1839"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1839"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0006"
properties.Width = "5e-05"
Rectangle1839= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1840"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1840"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00065"
properties.Width = "5e-05"
Rectangle1840= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1841"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1841"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0007"
properties.Width = "5e-05"
Rectangle1841= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1842"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1842"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00075"
properties.Width = "5e-05"
Rectangle1842= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1843"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1843"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0008"
properties.Width = "5e-05"
Rectangle1843= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1844"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1844"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00085"
properties.Width = "5e-05"
Rectangle1844= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1845"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1845"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0009"
properties.Width = "5e-05"
Rectangle1845= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1846"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1846"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00095"
properties.Width = "5e-05"
Rectangle1846= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1847"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1847"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.001"
properties.Width = "5e-05"
Rectangle1847= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1848"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1848"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00105"
properties.Width = "5e-05"
Rectangle1848= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1849"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1849"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0011"
properties.Width = "5e-05"
Rectangle1849= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1850"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1850"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00115"
properties.Width = "5e-05"
Rectangle1850= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1851"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1851"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0012"
properties.Width = "5e-05"
Rectangle1851= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1852"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1852"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00125"
properties.Width = "5e-05"
Rectangle1852= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1853"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1853"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0013"
properties.Width = "5e-05"
Rectangle1853= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1854"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1854"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00135"
properties.Width = "5e-05"
Rectangle1854= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1855"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1855"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.0014"
properties.Width = "5e-05"
Rectangle1855= project.Geometry:AddRectangle(properties)

-- Created geometry: rectangle "Rectangle1856"
properties = cf.Rectangle.GetDefaultProperties()
properties.Depth = "5e-05"
properties.Label = "Rectangle1856"
properties.Origin.U = "0.00145"
properties.Origin.V = "0.00145"
properties.Width = "5e-05"
Rectangle1856= project.Geometry:AddRectangle(properties)

