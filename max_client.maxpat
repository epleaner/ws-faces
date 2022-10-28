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
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1331.0, 93.5, 117.0, 22.0 ],
					"text" : "script npm install"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.662745098039216, 0.8, 0.815686274509804, 1.0 ],
					"fontname" : "Apple Chancery",
					"fontsize" : 50.0,
					"id" : "obj-26",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 810.0, 8.5, 201.0, 71.0 ],
					"text" : "START",
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1013.0, 462.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-17",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 961.0, 462.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 8.5, 63.5, 67.0, 22.0 ],
					"text" : "r ws_ready"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 564.0, 63.5, 67.0, 22.0 ],
					"text" : "r ws_ready"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1212.0, 69.5, 67.0, 22.0 ],
					"text" : "r ws_ready"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 810.0, 388.0, 69.0, 22.0 ],
					"text" : "s ws_ready"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 810.0, 364.0, 91.0, 22.0 ],
					"text" : "route ws_ready"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 564.0, 87.5, 170.0, 22.0 ],
					"text" : "url http://127.0.0.1:8080/client/"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1212.0, 141.5, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1212.0, 117.5, 137.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"watch" : 0
					}
,
					"text" : "node.script ws_server.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1212.0, 93.5, 117.0, 22.0 ],
					"text" : "script npm run serve"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 879.5, 87.5, 63.0, 22.0 ],
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
					"patching_rect" : [ 810.0, 87.5, 66.0, 22.0 ],
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
					"patching_rect" : [ 810.0, 141.5, 400.0, 220.0 ],
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
					"patching_rect" : [ 810.0, 117.5, 193.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
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
					"patching_rect" : [ 713.0, 510.0, 188.0, 930.0 ],
					"text" : "/32 : [231.578, 92.1977],\n/46 : [202.966, 127.711],\n/37 : [208.203, 121.872],\n/52 : [215.007, 139.76],\n/42 : [200.857, 117.385],\n/15 : [247.032, 84.5416],\n/57 : [207.228, 134.203],\n/20 : [178.02, 78.1736],\n/62 : [209.47, 114.765],\n/3 : [157.284, 133.922],\n/25 : [194.962, 91.5119],\n/67 : [236.985, 91.3817],\n/8 : [218.818, 166.243],\n/30 : [221.856, 92.8178],\n/44 : [186.138, 130.989],\n/50 : [226.176, 133.05],\n/35 : [192.988, 113.728],\n/49 : [219.393, 129.269],\n/40 : [219.032, 108.521],\n/13 : [254.223, 108.494],\n/55 : [191.801, 135.93],\n/18 : [219.439, 84.5186],\n/60 : [207.36, 132.603],\n/1 : [153.898, 102.554],\n/23 : [175.773, 90.3859],\n/65 : [190.34, 92.3799],\n/6 : [189.924, 165.26],\n/28 : [240.426, 93.9982],\n/70 : [236.289, 95.0691],\n/33 : [209.343, 89.5287],\n/47 : [207.749, 129.049],\n/38 : [218.682, 119.87],\n/53 : [206.996, 140.234],\n/43 : [215.929, 118.464],\n/16 : [239.976, 81.5492],\n/58 : [216.54, 133.902],\n/21 : [190.44, 80.2616],\n/63 : [180.28, 88.1809],\n/11 : [247.795, 138.101],\n/4 : [164.714, 147.352],\n/26 : [185.313, 92.8269],\n/68 : [226.46, 90.4482],\n/9 : [230.466, 159.248],\n/31 : [231.538, 95.3669],\n/45 : [194.997, 128.057],\n/36 : [196.748, 118.839],\n/51 : [220.999, 137.333],\n/41 : [209.456, 102.482],\n/14 : [253.956, 93.0795],\n/56 : [197.286, 132.917],\n/19 : [168.81, 80.7972],\n/61 : [197.436, 131.385],\n/2 : [154.484, 117.986],\n/24 : [185.748, 87.488],\n/66 : [180.342, 92.0169],\n/7 : [204.958, 168.201],\n/29 : [232.103, 90.0662],\n/34 : [197.937, 107.334],\n/48 : [212.37, 128.23],\n/39 : [222.609, 115.348],\n/10 : [240.608, 150.193],\n/54 : [198.597, 138.966],\n/17 : [228.461, 82.3147],\n/59 : [216.618, 132.36],\n/0 : [155.984, 87.0957],\n/22 : [199.563, 83.4851],\n/64 : [191.169, 88.6191],\n/12 : [251.782, 123.41],\n/5 : [176.159, 157.54],\n/27 : [185.77, 89.679],\n/69 : [226.599, 94.3224]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 736.0, 87.5, 42.0, 22.0 ],
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
					"patching_rect" : [ 415.0, 87.5, 147.0, 22.0 ],
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
					"patching_rect" : [ 415.0, 141.5, 385.0, 258.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 35.0, 385.0, 258.0 ],
					"rendermode" : 2,
					"url" : "http://127.0.0.1:8080/client/"
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
					"patching_rect" : [ 904.666666666666742, 533.5, 83.0, 21.0 ],
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
					"patching_rect" : [ 904.666666666666742, 510.5, 52.0, 21.0 ],
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
					"patching_rect" : [ 904.666666666666742, 558.5, 128.0, 32.0 ],
					"saturation" : 0.831372549019608
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 904.666666666666742, 486.5, 83.0, 22.0 ],
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
					"patching_rect" : [ 713.0, 486.0, 94.0, 22.0 ],
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
					"patching_rect" : [ 713.0, 462.0, 245.0, 22.0 ],
					"text" : "69f8ec4f-55c3-44d6-80d3-2b8918891302"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "FullPacket" ],
					"patching_rect" : [ 713.0, 433.5, 327.0, 22.0 ],
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
					"patching_rect" : [ 352.0, 433.5, 353.0, 1070.0 ],
					"text" : "/upperLipY : 132.603,\n/type : \"lipCoordinates\",\n/lowerLipY : 134.203,\n/drawColor : {\n  /r : 177.329,\n  /g : 138.976,\n  /b : 245.383\n},\n/positions : {\n  /32 : [231.578, 92.1977],\n  /46 : [202.966, 127.711],\n  /37 : [208.203, 121.872],\n  /52 : [215.007, 139.76],\n  /42 : [200.857, 117.385],\n  /15 : [247.032, 84.5416],\n  /57 : [207.228, 134.203],\n  /20 : [178.02, 78.1736],\n  /62 : [209.47, 114.765],\n  /3 : [157.284, 133.922],\n  /25 : [194.962, 91.5119],\n  /67 : [236.985, 91.3817],\n  /8 : [218.818, 166.243],\n  /30 : [221.856, 92.8178],\n  /44 : [186.138, 130.989],\n  /50 : [226.176, 133.05],\n  /35 : [192.988, 113.728],\n  /49 : [219.393, 129.269],\n  /40 : [219.032, 108.521],\n  /13 : [254.223, 108.494],\n  /55 : [191.801, 135.93],\n  /18 : [219.439, 84.5186],\n  /60 : [207.36, 132.603],\n  /1 : [153.898, 102.554],\n  /23 : [175.773, 90.3859],\n  /65 : [190.34, 92.3799],\n  /6 : [189.924, 165.26],\n  /28 : [240.426, 93.9982],\n  /70 : [236.289, 95.0691],\n  /33 : [209.343, 89.5287],\n  /47 : [207.749, 129.049],\n  /38 : [218.682, 119.87],\n  /53 : [206.996, 140.234],\n  /43 : [215.929, 118.464],\n  /16 : [239.976, 81.5492],\n  /58 : [216.54, 133.902],\n  /21 : [190.44, 80.2616],\n  /63 : [180.28, 88.1809],\n  /11 : [247.795, 138.101],\n  /4 : [164.714, 147.352],\n  /26 : [185.313, 92.8269],\n  /68 : [226.46, 90.4482],\n  /9 : [230.466, 159.248],\n  /31 : [231.538, 95.3669],\n  /45 : [194.997, 128.057],\n  /36 : [196.748, 118.839],\n  /51 : [220.999, 137.333],\n  /41 : [209.456, 102.482],\n  /14 : [253.956, 93.0795],\n  /56 : [197.286, 132.917],\n  /19 : [168.81, 80.7972],\n  /61 : [197.436, 131.385],\n  /2 : [154.484, 117.986],\n  /24 : [185.748, 87.488],\n  /66 : [180.342, 92.0169],\n  /7 : [204.958, 168.201],\n  /29 : [232.103, 90.0662],\n  /34 : [197.937, 107.334],\n  /48 : [212.37, 128.23],\n  /39 : [222.609, 115.348],\n  /10 : [240.608, 150.193],\n  /54 : [198.597, 138.966],\n  /17 : [228.461, 82.3147],\n  /59 : [216.618, 132.36],\n  /0 : [155.984, 87.0957],\n  /22 : [199.563, 83.4851],\n  /64 : [191.169, 88.6191],\n  /12 : [251.782, 123.41],\n  /5 : [176.159, 157.54],\n  /27 : [185.77, 89.679],\n  /69 : [226.599, 94.3224]\n},\n/id : \"69f8ec4f-55c3-44d6-80d3-2b8918891302\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.5, 433.5, 336.0, 242.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 87.5, 63.0, 22.0 ],
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
					"patching_rect" : [ 8.5, 87.5, 66.0, 22.0 ],
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
					"patching_rect" : [ 8.5, 141.5, 400.0, 220.0 ],
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
					"patching_rect" : [ 8.5, 117.5, 197.0, 22.0 ],
					"saved_object_attributes" : 					{
						"autostart" : 0,
						"defer" : 0,
						"node_bin_path" : "",
						"npm_bin_path" : "",
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
					"midpoints" : [ 18.0, 420.5, 361.5, 420.5 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 196.0, 142.0, 18.0, 142.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 18.0, 418.0, 722.5, 418.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 18.0, 419.5, 18.0, 419.5 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 993.5, 142.0, 819.5, 142.0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-28", 0 ]
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
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-38", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-38", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"midpoints" : [ 722.5, 458.25, 948.5, 458.25 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 773.833333333333371, 470.25, 797.5, 470.25 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"midpoints" : [ 825.166666666666629, 462.0, 914.166666666666742, 462.0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 876.5, 483.25, 722.5, 483.25 ],
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-5", 0 ]
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
