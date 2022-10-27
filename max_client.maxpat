{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 90.0, 1372.0, 776.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 881.5, 6.5, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 812.0, 6.5, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 812.0, 84.5, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 812.0, 60.5, 193.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 1
					}
,
					"text" : "node.script ws_server.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-6",
					"linecount" : 71,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.0, 453.0, 188.0, 930.0 ],
					"text" : "/32 : [228.103, 132.53],\n/46 : [200.133, 172.602],\n/37 : [205.427, 162.202],\n/52 : [212.288, 185.659],\n/42 : [197.967, 157.096],\n/15 : [242.928, 124.344],\n/57 : [204.712, 180.159],\n/20 : [173.715, 117.789],\n/62 : [206.741, 153.494],\n/3 : [153.54, 180.493],\n/25 : [190.796, 131.858],\n/67 : [233.694, 131.282],\n/8 : [217.673, 214.206],\n/30 : [218.623, 132.952],\n/44 : [184.321, 178.13],\n/50 : [222.429, 179.598],\n/35 : [189.368, 154.684],\n/49 : [216.552, 174.996],\n/40 : [216.194, 148.075],\n/13 : [251.282, 152.119],\n/55 : [189.668, 182.499],\n/18 : [216.377, 122.535],\n/60 : [204.799, 177.778],\n/1 : [149.272, 147.954],\n/23 : [171.831, 131.381],\n/65 : [186.328, 132.98],\n/6 : [187.51, 213.722],\n/28 : [236.946, 134.379],\n/70 : [232.931, 135.434],\n/33 : [205.804, 128.836],\n/47 : [205.099, 173.901],\n/38 : [216.158, 161.055],\n/53 : [204.592, 186.056],\n/43 : [213.271, 158.045],\n/16 : [236.544, 120.694],\n/58 : [213.541, 179.897],\n/21 : [186.044, 118.898],\n/63 : [176.088, 128.554],\n/11 : [245.41, 182.828],\n/4 : [161.272, 194.802],\n/26 : [181.237, 133.679],\n/68 : [223.083, 130.345],\n/9 : [229.227, 206.434],\n/31 : [228.155, 135.799],\n/45 : [192.392, 174.12],\n/36 : [193.403, 160.3],\n/51 : [218.034, 183.493],\n/41 : [206.362, 141.37],\n/14 : [250.503, 135.722],\n/56 : [195.086, 179.121],\n/19 : [165.112, 121.284],\n/61 : [195.116, 177.16],\n/2 : [150.19, 163.991],\n/24 : [181.631, 127.558],\n/66 : [176.276, 132.89],\n/7 : [203.298, 216.706],\n/29 : [228.755, 129.766],\n/34 : [194.736, 147.184],\n/48 : [209.85, 173.01],\n/39 : [220.245, 155.866],\n/10 : [238.864, 196.113],\n/54 : [196.381, 185.036],\n/17 : [225.278, 120.747],\n/59 : [213.569, 177.851],\n/0 : [151.444, 131.269],\n/22 : [195.168, 121.536],\n/64 : [187.115, 128.828],\n/12 : [249.107, 167.514],\n/5 : [173.13, 205.732],\n/27 : [181.577, 130.395],\n/69 : [223.196, 134.601]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 575.0, 6.5, 42.0, 22.0 ],
					"text" : "reload"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 426.0, 6.5, 147.0, 22.0 ],
					"text" : "readfile ../client/index.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 84.5, 385.0, 258.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 35.0, 385.0, 258.0 ],
					"rendermode" : 2,
					"url" : "file:///Users/elipleaner/workspace/ws-max/client/index.html"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 906.666666666666742, 476.5, 83.0, 21.0 ],
					"text" : "vexpr $i1/255."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.595186999999999,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 906.666666666666742, 453.5, 52.0, 21.0 ],
					"text" : "pack f f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "swatch",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 906.666666666666742, 501.5, 128.0, 32.0 ],
					"saturation" : 0.913725490196078
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 906.666666666666742, 429.5, 83.0, 22.0 ],
					"text" : "o.route /r /g /b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.0, 429.0, 94.0, 22.0 ],
					"text" : "lipCoordinates"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.0, 405.0, 245.0, 22.0 ],
					"text" : "0fc0f276-41df-4959-897b-6cde478b2e0f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 715.0, 376.5, 327.0, 22.0 ],
					"text" : "o.route /id /type /drawColor /positions /upperLipY /lowerLipY"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-29",
					"linecount" : 82,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 350.0, 376.5, 353.0, 1070.0 ],
					"text" : "/upperLipY : 177.778,\n/type : \"lipCoordinates\",\n/lowerLipY : 180.159,\n/drawColor : {\n  /r : 11.9293,\n  /g : 244.6,\n  /b : 75.3231\n},\n/positions : {\n  /32 : [228.103, 132.53],\n  /46 : [200.133, 172.602],\n  /37 : [205.427, 162.202],\n  /52 : [212.288, 185.659],\n  /42 : [197.967, 157.096],\n  /15 : [242.928, 124.344],\n  /57 : [204.712, 180.159],\n  /20 : [173.715, 117.789],\n  /62 : [206.741, 153.494],\n  /3 : [153.54, 180.493],\n  /25 : [190.796, 131.858],\n  /67 : [233.694, 131.282],\n  /8 : [217.673, 214.206],\n  /30 : [218.623, 132.952],\n  /44 : [184.321, 178.13],\n  /50 : [222.429, 179.598],\n  /35 : [189.368, 154.684],\n  /49 : [216.552, 174.996],\n  /40 : [216.194, 148.075],\n  /13 : [251.282, 152.119],\n  /55 : [189.668, 182.499],\n  /18 : [216.377, 122.535],\n  /60 : [204.799, 177.778],\n  /1 : [149.272, 147.954],\n  /23 : [171.831, 131.381],\n  /65 : [186.328, 132.98],\n  /6 : [187.51, 213.722],\n  /28 : [236.946, 134.379],\n  /70 : [232.931, 135.434],\n  /33 : [205.804, 128.836],\n  /47 : [205.099, 173.901],\n  /38 : [216.158, 161.055],\n  /53 : [204.592, 186.056],\n  /43 : [213.271, 158.045],\n  /16 : [236.544, 120.694],\n  /58 : [213.541, 179.897],\n  /21 : [186.044, 118.898],\n  /63 : [176.088, 128.554],\n  /11 : [245.41, 182.828],\n  /4 : [161.272, 194.802],\n  /26 : [181.237, 133.679],\n  /68 : [223.083, 130.345],\n  /9 : [229.227, 206.434],\n  /31 : [228.155, 135.799],\n  /45 : [192.392, 174.12],\n  /36 : [193.403, 160.3],\n  /51 : [218.034, 183.493],\n  /41 : [206.362, 141.37],\n  /14 : [250.503, 135.722],\n  /56 : [195.086, 179.121],\n  /19 : [165.112, 121.284],\n  /61 : [195.116, 177.16],\n  /2 : [150.19, 163.991],\n  /24 : [181.631, 127.558],\n  /66 : [176.276, 132.89],\n  /7 : [203.298, 216.706],\n  /29 : [228.755, 129.766],\n  /34 : [194.736, 147.184],\n  /48 : [209.85, 173.01],\n  /39 : [220.245, 155.866],\n  /10 : [238.864, 196.113],\n  /54 : [196.381, 185.036],\n  /17 : [225.278, 120.747],\n  /59 : [213.569, 177.851],\n  /0 : [151.444, 131.269],\n  /22 : [195.168, 121.536],\n  /64 : [187.115, 128.828],\n  /12 : [249.107, 167.514],\n  /5 : [173.13, 205.732],\n  /27 : [181.577, 130.395],\n  /69 : [223.196, 134.601]\n},\n/id : \"0fc0f276-41df-4959-897b-6cde478b2e0f\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.5, 376.5, 336.0, 242.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.0, 6.5, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.5, 6.5, 66.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 23.0, 84.5, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 10.5, 60.5, 197.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 1
					}
,
					"text" : "node.script max_client.js @watch 1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 20.0, 363.5, 359.5, 363.5 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 198.0, 85.0, 32.5, 85.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 20.0, 361.0, 724.5, 361.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 20.0, 362.5, 20.0, 362.5 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 995.5, 85.0, 821.5, 85.0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"midpoints" : [ 724.5, 401.25, 950.5, 401.25 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 775.833333333333371, 413.25, 799.5, 413.25 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 827.166666666666629, 405.0, 916.166666666666742, 405.0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 878.5, 426.25, 724.5, 426.25 ],
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 2 ],
					"source" : [ "obj-44", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 1 ],
					"source" : [ "obj-44", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "max_client.js",
				"bootpath" : "~/workspace/ws-max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "ws_server.js",
				"bootpath" : "~/workspace/ws-max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
