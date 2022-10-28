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
					"text" : "/32 : [208.668, 57.0113],\n/46 : [180.703, 92.9126],\n/37 : [185.722, 86.8666],\n/52 : [194.975, 111.932],\n/42 : [178.254, 82.671],\n/15 : [224.073, 48.7598],\n/57 : [185.836, 107.031],\n/20 : [155, 45.181],\n/62 : [185.926, 79.3832],\n/3 : [142.023, 103.172],\n/25 : [172.898, 58.188],\n/67 : [213.949, 55.7104],\n/8 : [199.668, 134.76],\n/30 : [199.002, 58.2182],\n/44 : [165.432, 99.2463],\n/50 : [205.864, 99.4354],\n/35 : [171.099, 79.7743],\n/49 : [199.074, 94.3256],\n/40 : [196.207, 73.3592],\n/13 : [233.751, 73.1925],\n/55 : [170.133, 106.955],\n/18 : [195.587, 49.3746],\n/60 : [185.827, 97.3899],\n/1 : [136.499, 72.4394],\n/23 : [154.093, 58.0218],\n/65 : [168.268, 59.1938],\n/6 : [171.61, 134.803],\n/28 : [217.691, 58.3048],\n/70 : [213.491, 59.5509],\n/33 : [185.897, 55.1511],\n/47 : [185.887, 93.9568],\n/38 : [196.644, 84.4757],\n/53 : [185.85, 113.272],\n/43 : [193.337, 82.7925],\n/16 : [216.284, 45.3533],\n/58 : [195.976, 105.386],\n/21 : [167.022, 46.5021],\n/63 : [158.151, 55.463],\n/11 : [228.064, 103.512],\n/4 : [149.341, 116.339],\n/26 : [163.33, 59.7981],\n/68 : [203.285, 55.4164],\n/9 : [211.165, 126.541],\n/31 : [208.738, 59.9999],\n/45 : [172.507, 94.2486],\n/36 : [174.782, 84.4157],\n/51 : [201.337, 107.054],\n/41 : [185.895, 67.5373],\n/14 : [232.786, 57.5098],\n/56 : [175.615, 105.286],\n/19 : [146.712, 48.8476],\n/61 : [175.547, 96.9869],\n/2 : [138.082, 87.7479],\n/24 : [163.369, 54.3888],\n/66 : [158.475, 59.3316],\n/7 : [185.776, 137.728],\n/29 : [208.908, 54.5682],\n/34 : [175.395, 73.2517],\n/48 : [190.977, 92.9761],\n/39 : [200.294, 79.8931],\n/10 : [220.979, 116.413],\n/54 : [176.677, 111.868],\n/17 : [204.656, 46.5956],\n/59 : [196.009, 97.0824],\n/0 : [137.439, 56.8656],\n/22 : [176.195, 49.36],\n/64 : [168.9, 55.3444],\n/12 : [231.958, 88.3907],\n/5 : [159.545, 126.621],\n/27 : [163.752, 56.8302],\n/69 : [203.78, 59.3261]"
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
					"saturation" : 0.596078431372549
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
					"text" : "a62f10f4-51ed-442d-8f5d-bb77aa294382"
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
					"text" : "/upperLipY : 97.3899,\n/type : \"lipCoordinates\",\n/lowerLipY : 107.031,\n/drawColor : {\n  /r : 181.732,\n  /g : 46.6614,\n  /b : 137.676\n},\n/positions : {\n  /32 : [208.668, 57.0113],\n  /46 : [180.703, 92.9126],\n  /37 : [185.722, 86.8666],\n  /52 : [194.975, 111.932],\n  /42 : [178.254, 82.671],\n  /15 : [224.073, 48.7598],\n  /57 : [185.836, 107.031],\n  /20 : [155, 45.181],\n  /62 : [185.926, 79.3832],\n  /3 : [142.023, 103.172],\n  /25 : [172.898, 58.188],\n  /67 : [213.949, 55.7104],\n  /8 : [199.668, 134.76],\n  /30 : [199.002, 58.2182],\n  /44 : [165.432, 99.2463],\n  /50 : [205.864, 99.4354],\n  /35 : [171.099, 79.7743],\n  /49 : [199.074, 94.3256],\n  /40 : [196.207, 73.3592],\n  /13 : [233.751, 73.1925],\n  /55 : [170.133, 106.955],\n  /18 : [195.587, 49.3746],\n  /60 : [185.827, 97.3899],\n  /1 : [136.499, 72.4394],\n  /23 : [154.093, 58.0218],\n  /65 : [168.268, 59.1938],\n  /6 : [171.61, 134.803],\n  /28 : [217.691, 58.3048],\n  /70 : [213.491, 59.5509],\n  /33 : [185.897, 55.1511],\n  /47 : [185.887, 93.9568],\n  /38 : [196.644, 84.4757],\n  /53 : [185.85, 113.272],\n  /43 : [193.337, 82.7925],\n  /16 : [216.284, 45.3533],\n  /58 : [195.976, 105.386],\n  /21 : [167.022, 46.5021],\n  /63 : [158.151, 55.463],\n  /11 : [228.064, 103.512],\n  /4 : [149.341, 116.339],\n  /26 : [163.33, 59.7981],\n  /68 : [203.285, 55.4164],\n  /9 : [211.165, 126.541],\n  /31 : [208.738, 59.9999],\n  /45 : [172.507, 94.2486],\n  /36 : [174.782, 84.4157],\n  /51 : [201.337, 107.054],\n  /41 : [185.895, 67.5373],\n  /14 : [232.786, 57.5098],\n  /56 : [175.615, 105.286],\n  /19 : [146.712, 48.8476],\n  /61 : [175.547, 96.9869],\n  /2 : [138.082, 87.7479],\n  /24 : [163.369, 54.3888],\n  /66 : [158.475, 59.3316],\n  /7 : [185.776, 137.728],\n  /29 : [208.908, 54.5682],\n  /34 : [175.395, 73.2517],\n  /48 : [190.977, 92.9761],\n  /39 : [200.294, 79.8931],\n  /10 : [220.979, 116.413],\n  /54 : [176.677, 111.868],\n  /17 : [204.656, 46.5956],\n  /59 : [196.009, 97.0824],\n  /0 : [137.439, 56.8656],\n  /22 : [176.195, 49.36],\n  /64 : [168.9, 55.3444],\n  /12 : [231.958, 88.3907],\n  /5 : [159.545, 126.621],\n  /27 : [163.752, 56.8302],\n  /69 : [203.78, 59.3261]\n},\n/id : \"a62f10f4-51ed-442d-8f5d-bb77aa294382\""
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
