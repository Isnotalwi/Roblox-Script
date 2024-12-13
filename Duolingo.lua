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
			local v82 = 0;
			while true do
				if (v82 == 0) then
					v19 = v0(v3(v30, 1, 1));
					return "";
				end
			end
		else
			local v83 = v2(v0(v30, 16));
			if v19 then
				local v89 = v5(v83, v19);
				v19 = nil;
				return v89;
			else
				return v83;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v84 = (v31 / ((5 - 3) ^ (v32 - 1))) % ((5 - 3) ^ (((v33 - (1 - 0)) - (v32 - 1)) + (2 - 1)));
			return v84 - (v84 % ((156 + 464) - (555 + 64)));
		else
			local v85 = 2 ^ (v32 - ((147 + 785) - (857 + 74)));
			return (((v31 % (v85 + v85)) >= v85) and (569 - (367 + 201))) or (927 - (214 + 713));
		end
	end
	local function v21()
		local v34 = v1(v16, v18, v18);
		v18 = v18 + 1;
		return v34;
	end
	local function v22()
		local v35, v36 = v1(v16, v18, v18 + (879 - (282 + 595)));
		v18 = v18 + (1639 - (1523 + 114));
		return (v36 * (231 + 25)) + v35;
	end
	local function v23()
		local v37 = 0 - 0;
		local v38;
		local v39;
		local v40;
		local v41;
		while true do
			if (v37 == 1) then
				return (v41 * 16777216) + (v40 * (66601 - (68 + 997))) + (v39 * ((339 + 1187) - (226 + 1044))) + v38;
			end
			if (v37 == (0 - 0)) then
				v38, v39, v40, v41 = v1(v16, v18, v18 + ((1077 - (892 + 65)) - (32 + 85)));
				v18 = v18 + 4;
				v37 = 1 + 0;
			end
		end
	end
	local function v24()
		local v42 = v23();
		local v43 = v23();
		local v44 = 2 - 1;
		local v45 = (v20(v43, 1 - 0, 36 - 16) * (((625 - 273) - (87 + 263)) ^ (212 - (67 + 113)))) + v42;
		local v46 = v20(v43, 16 + 5, 75 - 44);
		local v47 = ((v20(v43, 24 + 8) == (3 - (2 + 0))) and -(953 - (802 + 150))) or (2 - (792 - (368 + 423)));
		if (v46 == 0) then
			if (v45 == (0 - 0)) then
				return v47 * ((0 - 0) + 0);
			else
				v46 = 998 - (915 + 82);
				v44 = 0 - 0;
			end
		elseif (v46 == (1193 + 854)) then
			return ((v45 == (0 - 0)) and (v47 * ((1188 - (1069 + 118)) / (0 - 0)))) or (v47 * NaN);
		end
		return v8(v47, v46 - (2237 - 1214)) * (v44 + (v45 / (((19 - (10 + 8)) + 1) ^ 52)));
	end
	local function v25(v48)
		local v49;
		if not v48 then
			v48 = v23();
			if (v48 == (0 - 0)) then
				return "";
			end
		end
		v49 = v3(v16, v18, (v18 + v48) - (443 - (416 + 26)));
		v18 = v18 + v48;
		local v50 = {};
		for v65 = 3 - 2, #v49 do
			v50[v65] = v2(v1(v3(v49, v65, v65)));
		end
		return v6(v50);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v51 = (function()
			return 0 + 0;
		end)();
		local v52 = (function()
			return;
		end)();
		local v53 = (function()
			return;
		end)();
		local v54 = (function()
			return;
		end)();
		local v55 = (function()
			return;
		end)();
		local v56 = (function()
			return;
		end)();
		local v57 = (function()
			return;
		end)();
		local v58 = (function()
			return;
		end)();
		while true do
			local v67 = (function()
				return 0 - 0;
			end)();
			while true do
				if (v67 == 0) then
					local v90 = (function()
						return 0 - 0;
					end)();
					while true do
						if ((0 - 0) ~= v90) then
						else
							if (v51 ~= (0 + 0)) then
							else
								v52 = (function()
									return function(v106, v107, v108)
										local v109 = (function()
											return 0 + 0;
										end)();
										local v110 = (function()
											return;
										end)();
										while true do
											if ((0 + 0) == v109) then
												v110 = (function()
													return 396 - (115 + 281);
												end)();
												while true do
													if (v110 == (0 - 0)) then
														local v273 = (function()
															return 0 + 0;
														end)();
														local v274 = (function()
															return;
														end)();
														while true do
															if (v273 ~= (0 - 0)) then
															else
																v274 = (function()
																	return 0 - 0;
																end)();
																while true do
																	if ((0 + 0) == v274) then
																		local v354 = (function()
																			return 0;
																		end)();
																		while true do
																			if (v354 ~= (867 - (550 + 317))) then
																			else
																				v106[v107 - #" "] = (function()
																					return v108();
																				end)();
																				return v106, v107, v108;
																			end
																		end
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
									end;
								end)();
								v53 = (function()
									return {};
								end)();
								v54 = (function()
									return {};
								end)();
								v51 = (function()
									return 1025 - (706 + 318);
								end)();
							end
							if (v51 ~= (3 - 0)) then
							else
								for v98 = #"~", v23() do
									local v99 = (function()
										return v21();
									end)();
									if (v20(v99, #"!", #"!") == 0) then
										local v111 = (function()
											return 1251 - (721 + 530);
										end)();
										local v112 = (function()
											return;
										end)();
										local v113 = (function()
											return;
										end)();
										local v114 = (function()
											return;
										end)();
										while true do
											if (v111 == (0 - 0)) then
												local v203 = (function()
													return 0;
												end)();
												local v204 = (function()
													return;
												end)();
												while true do
													if (v203 ~= (0 - 0)) then
													else
														v204 = (function()
															return 285 - (134 + 151);
														end)();
														while true do
															if (0 ~= v204) then
															else
																local v343 = (function()
																	return 1665 - (970 + 695);
																end)();
																while true do
																	if (v343 ~= (0 - 0)) then
																	else
																		v112 = (function()
																			return v20(v99, 1992 - (582 + 1408), #"nil");
																		end)();
																		v113 = (function()
																			return v20(v99, #".com", 20 - 14);
																		end)();
																		v343 = (function()
																			return 1;
																		end)();
																	end
																	if (v343 == (1 - 0)) then
																		v204 = (function()
																			return 1;
																		end)();
																		break;
																	end
																end
															end
															if (v204 == (701 - (271 + 429))) then
																v111 = (function()
																	return 1 + 0;
																end)();
																break;
															end
														end
														break;
													end
												end
											end
											if ((3 - 2) == v111) then
												local v205 = (function()
													return 0;
												end)();
												while true do
													if (1 ~= v205) then
													else
														v111 = (function()
															return 1826 - (1195 + 629);
														end)();
														break;
													end
													if (v205 ~= 0) then
													else
														v114 = (function()
															return {v22(),v22(),nil,nil};
														end)();
														if (v112 == (241 - (187 + 54))) then
															local v336 = (function()
																return 0;
															end)();
															local v337 = (function()
																return;
															end)();
															while true do
																if (v336 == 0) then
																	v337 = (function()
																		return 780 - (162 + 618);
																	end)();
																	while true do
																		if ((0 + 0) ~= v337) then
																		else
																			v114[#"91("] = (function()
																				return v22();
																			end)();
																			v114[#"?id="] = (function()
																				return v22();
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														elseif (v112 == #".") then
															v114[#"gha"] = (function()
																return v23();
															end)();
														elseif (v112 == (1 + 1)) then
															v114[#"xxx"] = (function()
																return v23() - (2 ^ (11 + 5));
															end)();
														elseif (v112 == #"asd") then
															local v363 = (function()
																return 0 - 0;
															end)();
															local v364 = (function()
																return;
															end)();
															while true do
																if (v363 ~= (0 - 0)) then
																else
																	v364 = (function()
																		return 0;
																	end)();
																	while true do
																		if (v364 == (0 + 0)) then
																			v114[#"asd"] = (function()
																				return v23() - (2 ^ 16);
																			end)();
																			v114[#"xnxx"] = (function()
																				return v22();
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														end
														v205 = (function()
															return 1637 - (1373 + 263);
														end)();
													end
												end
											end
											if (v111 == (532 - (406 + 123))) then
												if (v20(v113, #"xxx", #"91(") == #"<") then
													v114[#".dev"] = (function()
														return v58[v114[#"0313"]];
													end)();
												end
												v53[v98] = (function()
													return v114;
												end)();
												break;
											end
											if ((1002 - (451 + 549)) == v111) then
												if (v20(v113, #":", #"[") == #"}") then
													v114[1 + 1] = (function()
														return v58[v114[2 - 0]];
													end)();
												end
												if (v20(v113, 2 - 0, 1386 - (746 + 638)) == #">") then
													v114[#"19("] = (function()
														return v58[v114[#"91("]];
													end)();
												end
												v111 = (function()
													return 2 + 1;
												end)();
											end
										end
									end
								end
								for v100 = #"{", v23() do
									v54, v100, v28 = (function()
										return v52(v54, v100, v28);
									end)();
								end
								return v56;
							end
							v90 = (function()
								return 1 - 0;
							end)();
						end
						if (v90 == (342 - (218 + 123))) then
							v67 = (function()
								return 1146 - (466 + 679);
							end)();
							break;
						end
					end
				end
				if (v67 ~= 1) then
				else
					if (v51 ~= (1583 - (1535 + 46))) then
					else
						local v95 = (function()
							return 0 + 0;
						end)();
						while true do
							if (v95 ~= (1 + 0)) then
							else
								v56[#"gha"] = (function()
									return v21();
								end)();
								v51 = (function()
									return 563 - (306 + 254);
								end)();
								break;
							end
							if (v95 ~= 0) then
							else
								v58 = (function()
									return {};
								end)();
								for v101 = #"\\", v57 do
									local v102 = (function()
										return 0 + 0;
									end)();
									local v103 = (function()
										return;
									end)();
									local v104 = (function()
										return;
									end)();
									local v105 = (function()
										return;
									end)();
									while true do
										if (v102 ~= 1) then
										else
											v105 = (function()
												return nil;
											end)();
											while true do
												if (v103 == (0 - 0)) then
													local v221 = (function()
														return 0;
													end)();
													local v222 = (function()
														return;
													end)();
													while true do
														if (v221 ~= (0 + 0)) then
														else
															v222 = (function()
																return 0;
															end)();
															while true do
																if (v222 == (1467 - (899 + 568))) then
																	v104 = (function()
																		return v21();
																	end)();
																	v105 = (function()
																		return nil;
																	end)();
																	v222 = (function()
																		return 1 + 0;
																	end)();
																end
																if (v222 == (2 - 1)) then
																	v103 = (function()
																		return 1;
																	end)();
																	break;
																end
															end
															break;
														end
													end
												end
												if (v103 ~= (604 - (268 + 335))) then
												else
													if (v104 == #".") then
														v105 = (function()
															return v21() ~= 0;
														end)();
													elseif (v104 == (5 - 3)) then
														v105 = (function()
															return v24();
														end)();
													elseif (v104 == #"asd") then
														v105 = (function()
															return v25();
														end)();
													end
													v58[v101] = (function()
														return v105;
													end)();
													break;
												end
											end
											break;
										end
										if (v102 ~= 0) then
										else
											v103 = (function()
												return 0;
											end)();
											v104 = (function()
												return nil;
											end)();
											v102 = (function()
												return 291 - (60 + 230);
											end)();
										end
									end
								end
								v95 = (function()
									return 1;
								end)();
							end
						end
					end
					if (v51 == 1) then
						local v96 = (function()
							return 584 - (57 + 527);
						end)();
						while true do
							if (v96 ~= 0) then
							else
								v55 = (function()
									return {};
								end)();
								v56 = (function()
									return {v53,v54,nil,v55};
								end)();
								v96 = (function()
									return 1;
								end)();
							end
							if (v96 == (104 - (17 + 86))) then
								v57 = (function()
									return v23();
								end)();
								v51 = (function()
									return 574 - (426 + 146);
								end)();
								break;
							end
						end
					end
					break;
				end
			end
		end
	end
	local function v29(v59, v60, v61)
		local v62 = v59[1 + 0];
		local v63 = v59[2];
		local v64 = v59[6 - 3];
		return function(...)
			local v68 = v62;
			local v69 = v63;
			local v70 = v64;
			local v71 = v27;
			local v72 = 2 - 1;
			local v73 = -((146 + 21) - (122 + 44));
			local v74 = {};
			local v75 = {...};
			local v76 = v12("#", ...) - (3 - 2);
			local v77 = {};
			local v78 = {};
			for v86 = 0 + 0, v76 do
				if (v86 >= v70) then
					v74[v86 - v70] = v75[v86 + 1];
				else
					v78[v86] = v75[v86 + 1 + 0];
				end
			end
			local v79 = (v76 - v70) + (1 - 0);
			local v80;
			local v81;
			while true do
				v80 = v68[v72];
				v81 = v80[1];
				if (v81 <= (102 - (30 + 35))) then
					if ((v81 <= (13 + 5)) or (3942 < 1134)) then
						if (v81 <= (1265 - (1043 + 214))) then
							if (v81 <= (11 - 8)) then
								if ((v81 <= (1213 - (323 + 889))) or (2693 == 4973) or (1160 <= 328)) then
									if (v81 == (0 - 0)) then
										local v115 = v80[582 - (361 + 219)];
										local v116 = v78[v115];
										local v117 = v78[v115 + 1 + 1];
										if (v117 > (320 - (53 + 267))) then
											if (v116 > v78[v115 + 1 + 0]) then
												v72 = v80[416 - (15 + 398)];
											else
												v78[v115 + 3] = v116;
											end
										elseif (v116 < v78[v115 + 1]) then
											v72 = v80[985 - (18 + 964)];
										else
											v78[v115 + (11 - 8)] = v116;
										end
									else
										v78[v80[2 + 0 + 0]] = v78[v80[3]] % v80[4];
									end
								elseif (v81 > 2) then
									v78[v80[2 + 0]] = v80[853 - (20 + 146 + 684)];
								else
									v78[v80[2 + 0]] = v78[v80[129 - ((214 - 98) + 10)]] % v78[v80[1 + 3]];
								end
							elseif ((3808 > 2924) and (v81 <= (743 - (542 + 196)))) then
								if ((2146 == 2146) and (v81 > (8 - 4))) then
									v78[v80[1 + (1912 - (340 + 1571))]] = v78[v80[2 + 1]] + v80[2 + 2];
								else
									local v123 = 0 - 0;
									local v124;
									local v125;
									local v126;
									while true do
										if (v123 == (4 - 2)) then
											for v295 = 1552 - (1126 + 425), v80[(162 + 247) - (118 + 287)] do
												v72 = v72 + (3 - 2);
												local v296 = v68[v72];
												if ((v296[1122 - (118 + 1003)] == (102 - 67)) or (2244 == 3224)) then
													v126[v295 - (378 - ((1914 - (1733 + 39)) + 235))] = {v78,v296[980 - (553 + 424)]};
												else
													v126[v295 - 1] = {v60,v296[3]};
												end
												v77[#v77 + 1 + 0] = v126;
											end
											v78[v80[2 + 0]] = v29(v124, v125, v61);
											break;
										end
										if ((3891 < 4919) and (v123 == (0 + 0))) then
											v124 = v69[v80[3]];
											v125 = nil;
											v123 = 1 + 0;
										end
										if (v123 == 1) then
											v126 = {};
											v125 = v10({}, {__index=function(v298, v299)
												local v300 = 0 - 0;
												local v301;
												while true do
													if ((0 - 0) == v300) then
														v301 = v126[v299];
														return v301[2 - 1][v301[1 + 1]];
													end
												end
											end,__newindex=function(v302, v303, v304)
												local v305 = v126[v303];
												v305[4 - 3][v305[755 - (239 + 514)]] = v304;
											end});
											v123 = 1 + 1 + 0;
										end
									end
								end
							elseif ((v81 <= (1335 - (797 + 532))) or (4904 <= 1916) or (2234 <= 1502)) then
								v78[v80[2 + 0]]();
							elseif (v81 > 7) then
								if ((90 <= 1065) and (v78[v80[1 + (1 - 0)]] == v78[v80[9 - 5]])) then
									v72 = v72 + (1203 - (373 + 829));
								else
									v72 = v80[734 - (476 + 255)];
								end
							else
								v78[v80[2]] = v80[1133 - (369 + 761)] + v78[v80[3 + 1]];
							end
						elseif (v81 <= (23 - 10)) then
							if ((v81 <= (18 - 8)) or (2512 < 432)) then
								if (v81 == (247 - (63 + 1 + 174))) then
									v78[v80[1 + (513 - (409 + 103))]] = v78[v80[3 - 0]] % v80[340 - (144 + 192)];
								elseif (not v78[v80[2]] or (1848 == 865)) then
									v72 = v72 + 1;
								else
									v72 = v80[219 - (42 + 174)];
								end
							elseif (v81 <= (9 + 2)) then
								local v128 = v80[2 + (236 - (46 + 190))];
								v78[v128](v13(v78, v128 + 1 + 0, v80[1507 - ((458 - (51 + 44)) + 1141)]));
							elseif ((4802 == 4802) and (v81 > (1592 - (1183 + 397)))) then
								local v226 = v80[5 - 3];
								do
									return v13(v78, v226, v73);
								end
							else
								local v227 = 0 + 0;
								local v228;
								while true do
									if (0 == v227) then
										v228 = v80[2 + 0 + 0];
										v78[v228] = v78[v228](v13(v78, v228 + (1976 - (1913 + 62)), v80[3]));
										break;
									end
								end
							end
						elseif (v81 <= (10 + 5)) then
							if (v81 > (36 - (1339 - (1114 + 203)))) then
								local v129 = v80[1935 - (565 + (2094 - (228 + 498)))];
								v78[v129] = v78[v129](v13(v78, v129 + (3 - 2), v80[1664 - (1477 + 184)]));
							else
								v78[v80[2 - 0]] = v61[v80[3]];
							end
						elseif (v81 <= (15 + 1)) then
							local v133 = v80[858 - (564 + 292)];
							v78[v133](v13(v78, v133 + (1 - 0), v73));
						elseif (v81 > (51 - 34)) then
							v78[v80[306 - (244 + 60)]] = v61[v80[3 + 0]];
						else
							v78[v80[1 + 1]] = {};
						end
					elseif ((v81 <= (503 - (41 + 241 + 194))) or (2280 <= 511) or (4682 <= 4541)) then
						if (v81 <= (1023 - (938 + 63))) then
							if ((v81 <= (683 - (174 + 489))) or (1676 <= 463)) then
								if ((3869 == 3869) and (v81 == (15 + 4))) then
									v78[v80[(2936 - 1809) - (936 + 189)]] = v78[v80[3]];
								else
									local v136 = 0;
									local v137;
									local v138;
									local v139;
									local v140;
									while true do
										if (2 == v136) then
											for v308 = v137, v73 do
												v140 = v140 + 1 + 0;
												v78[v308] = v138[v140];
											end
											break;
										end
										if ((1158 <= 2613) and (v136 == 1)) then
											v73 = (v139 + v137) - (1614 - (1565 + 48));
											v140 = (1905 - (830 + 1075)) + 0;
											v136 = 1140 - (782 + 356);
										end
										if (v136 == 0) then
											v137 = v80[269 - (176 + (615 - (303 + 221)))];
											v138, v139 = v71(v78[v137](v78[v137 + (2 - 1)]));
											v136 = 1 - 0;
										end
									end
								end
							elseif ((v81 > (1113 - ((2244 - (231 + 1038)) + 117))) or (2364 <= 1999) or (3026 >= 4046)) then
								local v141 = v80[1877 - (157 + 1718)];
								v78[v141](v13(v78, v141 + 1 + 0 + 0, v80[3]));
							else
								local v142 = v80[(1168 - (171 + 991)) - 4];
								local v143 = v78[v142 + (6 - 4)];
								local v144 = v78[v142] + v143;
								v78[v142] = v144;
								if ((2008 > 638) and ((v143 > 0) or (4922 < 194))) then
									if (v144 <= v78[v142 + 1]) then
										local v311 = 1018 - (697 + (1322 - 1001));
										while true do
											if (v311 == (0 - 0)) then
												v72 = v80[5 - 2];
												v78[v142 + (6 - 3)] = v144;
												break;
											end
										end
									end
								elseif (v144 >= v78[v142 + 1 + 0]) then
									v72 = v80[3];
									v78[v142 + (5 - 2)] = v144;
								end
							end
						elseif (v81 <= (64 - 40)) then
							if (v81 == (1250 - (322 + 905))) then
								local v146 = v80[613 - (602 + 9)];
								local v147, v148 = v71(v78[v146](v13(v78, v146 + (1190 - (449 + (1987 - 1247))), v73)));
								v73 = (v148 + v146) - (873 - (826 + 46));
								local v149 = 947 - (245 + 702);
								for v207 = v146, v73 do
									local v208 = 0;
									while true do
										if ((v208 == (0 - (0 - 0))) or (2091 < 31)) then
											v149 = v149 + 1 + 0;
											v78[v207] = v147[v149];
											break;
										end
									end
								end
							else
								local v150 = v80[2];
								local v151, v152 = v71(v78[v150](v13(v78, v150 + (1899 - (209 + 51 + 1638)), v80[3])));
								v73 = (v152 + v150) - (441 - (382 + 58));
								local v153 = 0 - 0;
								for v209 = v150, v73 do
									v153 = v153 + (3 - 2);
									v78[v209] = v151[v153];
								end
							end
						elseif ((v81 <= ((60 - 39) + 4)) or (2430 >= 4872)) then
							local v154 = v80[3 - 1];
							do
								return v78[v154](v13(v78, v154 + (2 - 1), v80[1208 - ((1453 - 551) + 303)]));
							end
						elseif ((1775 <= 3233) and (v81 > (56 - 30))) then
							local v232 = v80[2];
							do
								return v13(v78, v232, v73);
							end
						else
							v78[v80[4 - 2]] = v60[v80[3]];
						end
					elseif ((v81 <= (3 + 29)) or (4770 < 1735)) then
						if ((v81 <= 29) or (4439 <= 2350) or (4543 == 1997)) then
							if ((v81 > (1718 - ((3465 - 2344) + 569))) or (4479 < 4466)) then
								local v155 = v80[2];
								v78[v155](v13(v78, v155 + 1, v73));
							else
								local v156 = v80[216 - (22 + 192)];
								local v157, v158 = v71(v78[v156](v13(v78, v156 + (684 - (483 + 200)), v80[3])));
								v73 = (v158 + v156) - (1464 - ((2652 - (111 + 1137)) + 59));
								local v159 = 0 - 0;
								for v212 = v156, v73 do
									v159 = v159 + (1 - 0);
									v78[v212] = v157[v159];
								end
							end
						elseif (v81 <= 30) then
							local v160 = 0;
							local v161;
							local v162;
							local v163;
							while true do
								if (v160 == (765 - (468 + 297))) then
									v161 = v80[564 - (334 + 228)];
									v162 = v78[v161];
									v160 = 3 - 2;
								end
								if (v160 == (2 - 1)) then
									v163 = v78[v161 + 2];
									if (v163 > (0 - 0)) then
										if ((v162 > v78[v161 + 1]) or (3102 < 728)) then
											v72 = v80[1 + 2];
										else
											v78[v161 + (239 - ((299 - (91 + 67)) + 95))] = v162;
										end
									elseif ((345 == 345) and (v162 < v78[v161 + 1])) then
										v72 = v80[3 + 0];
									else
										v78[v161 + (7 - 4)] = v162;
									end
									break;
								end
							end
						elseif (v81 > (74 - 43)) then
							local v235 = v80[1 + 1];
							local v236 = v78[v80[(23 - 15) - 5]];
							v78[v235 + 1] = v236;
							v78[v235] = v236[v80[3 + 1]];
						elseif (v78[v80[2]] == v80[3 + 1]) then
							v72 = v72 + (1 - 0);
						else
							v72 = v80[3];
						end
					elseif ((v81 <= (21 + 13)) or (2827 < 378)) then
						if (v81 == 33) then
							local v164 = 163 - (92 + 71);
							local v165;
							local v166;
							local v167;
							while true do
								if ((v164 == (0 + 0)) or (3476 < 2597)) then
									v165 = v69[v80[3]];
									v166 = nil;
									v164 = 1 - 0;
								end
								if ((3079 < 4794) and (v164 == (767 - (144 + 430 + 191)))) then
									for v317 = 1, v80[4 + 0] do
										local v318 = 0 - 0;
										local v319;
										while true do
											if (v318 == (1 + 0)) then
												if (v319[850 - (254 + 595)] == (161 - (55 + (594 - (423 + 100))))) then
													v167[v317 - (1 - 0)] = {v78,v319[1 + 2]};
												else
													v167[v317 - (1 - (0 - 0))] = {v60,v319[3 - 0]};
												end
												v77[#v77 + 1 + 0] = v167;
												break;
											end
											if (v318 == ((0 - 0) - 0)) then
												v72 = v72 + (807 - (118 + 688));
												v319 = v68[v72];
												v318 = 49 - (25 + 23);
											end
										end
									end
									v78[v80[1 + 1]] = v29(v165, v166, v61);
									break;
								end
								if ((4854 > 4464) and (v164 == 1)) then
									v167 = {};
									v166 = v10({}, {__index=function(v320, v321)
										local v322 = v167[v321];
										return v322[1887 - (927 + 959)][v322[6 - 4]];
									end,__newindex=function(v323, v324, v325)
										local v326 = v167[v324];
										v326[733 - (16 + 716)][v326[3 - 1]] = v325;
									end});
									v164 = 99 - ((24 - 13) + 86);
								end
							end
						else
							local v168 = v78[v80[9 - 5]];
							if not v168 then
								v72 = v72 + 1;
							else
								v78[v80[287 - (175 + 110)]] = v168;
								v72 = v80[(13 - 7) - (714 - (530 + 181))];
							end
						end
					elseif ((2547 > 1225) and (v81 <= (172 - 137))) then
						v78[v80[1798 - (503 + 1293)]] = v78[v80[8 - 5]];
					elseif (v81 == ((908 - (614 + 267)) + (41 - (19 + 13)))) then
						v78[v80[1063 - (810 + 251)]]();
					else
						local v242 = v80[2 + 0];
						local v243 = v78[v80[1 + 2]];
						v78[v242 + 1 + 0] = v243;
						v78[v242] = v243[v80[537 - (43 + (797 - 307))]];
					end
				elseif ((v81 <= (129 - 73)) or (4912 == 3758)) then
					if ((126 <= 3482) and (v81 <= (779 - (711 + (62 - 40))))) then
						if ((4671 > 2674) and (v81 <= (158 - 117))) then
							if (v81 <= ((234 + 664) - (240 + (1088 - 469)))) then
								if (v81 > (10 + (57 - 29))) then
									v78[v80[2 - 0]] = v78[v80[1 + 2]][v80[4]];
								else
									v78[v80[1746 - (1344 + 400)]] = v78[v80[408 - (255 + 150)]] + v80[4 + 0];
								end
							elseif (v81 == (22 + 18)) then
								v78[v80[2]] = {};
							else
								v78[v80[8 - 6]][v80[3]] = v80[(1824 - (1293 + 519)) - 8];
							end
						elseif ((v81 <= (1782 - (404 + 1335))) or (3696 < 3327)) then
							if (v81 == (85 - 43)) then
								v78[v80[408 - (183 + 223)]][v80[3]] = v80[4 - 0];
							else
								local v179 = v80[2 + 0];
								do
									return v78[v179](v13(v78, v179 + 1, v80[2 + 1]));
								end
							end
						elseif (v81 <= (381 - (10 + 327))) then
							v78[v80[2]][v78[v80[3]]] = v78[v80[3 + (2 - 1)]];
						elseif ((v81 > 45) or (4542 == 2970)) then
							local v247 = v80[340 - (118 + 220)];
							v78[v247](v78[v247 + 1 + 0]);
						else
							v72 = v80[452 - ((206 - 98) + 341)];
						end
					elseif ((252 <= 1977) and (v81 <= (23 + 28))) then
						if (v81 <= (202 - (663 - 509))) then
							if ((v81 > (1540 - (711 + 782))) or (2374 == 4374)) then
								if not v78[v80[2]] then
									v72 = v72 + 1;
								else
									v72 = v80[5 - (4 - 2)];
								end
							elseif (v78[v80[471 - (270 + 199)]] == v80[4]) then
								v72 = v72 + 1 + 0 + 0;
							else
								v72 = v80[1822 - (580 + 253 + 986)];
							end
						elseif ((v81 <= (145 - 96)) or (1436 == 3775)) then
							v78[v80[2]] = #v78[v80[3 + 0]];
						elseif ((1575 == 1575) and (v81 == (2 + 48))) then
							do
								return;
							end
						else
							local v251 = v80[1 + 1];
							v78[v251] = v78[v251](v78[v251 + (2 - 1)]);
						end
					elseif ((v81 <= (33 + 20)) or (2234 == 1455)) then
						if ((v81 == (1219 - (645 + 522))) or (1067 > 1779)) then
							v78[v80[1792 - (1010 + 780)]] = v78[v80[3 + 0]] % v78[v80[19 - 15]];
						else
							v72 = v80[3];
						end
					elseif ((2161 >= 934) and ((v81 <= ((366 - 208) - 104)) or (1618 < 930))) then
						if (v80[(425 + 1413) - (1045 + 791)] == v78[v80[9 - (2 + 3)]]) then
							v72 = v72 + (1 - 0);
						else
							v72 = v80[508 - (351 + 154)];
						end
					elseif ((1612 == 1612) and (v81 == 55)) then
						local v254 = v80[2];
						v78[v254] = v78[v254](v78[v254 + 1]);
					else
						local v256 = 1574 - (1281 + 293);
						local v257;
						while true do
							if (v256 == (266 - (28 + 238))) then
								v257 = v80[4 - 2];
								v78[v257](v78[v257 + (1560 - (1381 + 178))]);
								break;
							end
						end
					end
				elseif (v81 <= (61 + 4)) then
					if ((4352 >= 2833) and (v81 <= (49 + 11))) then
						if (v81 <= (25 + 33)) then
							if (v81 > (196 - 139)) then
								local v185 = v78[v80[3 + 1]];
								if not v185 then
									v72 = v72 + (471 - (381 + 89));
								else
									local v258 = 0 + 0;
									while true do
										if (v258 == (0 + 0)) then
											v78[v80[2]] = v185;
											v72 = v80[4 - 1];
											break;
										end
									end
								end
							else
								v78[v80[2]] = v80[3];
							end
						elseif (v81 > ((760 + 455) - (1074 + 82))) then
							local v188 = 0;
							local v189;
							while true do
								if ((4723 > 4153) and (v188 == (0 - (1096 - (709 + 387))))) then
									v189 = v80[1786 - (214 + 1570)];
									v78[v189] = v78[v189](v13(v78, v189 + 1, v73));
									break;
								end
							end
						else
							local v190 = v80[1457 - (990 + (2323 - (673 + 1185)))];
							local v191, v192 = v71(v78[v190](v78[v190 + 1 + 0]));
							v73 = (v192 + v190) - (1 + 0);
							local v193 = 0 - 0;
							for v215 = v190, v73 do
								local v216 = 0;
								while true do
									if ((v216 == 0) or (3654 >= 4654)) then
										v193 = v193 + (3 - 2) + 0;
										v78[v215] = v191[v193];
										break;
									end
								end
							end
						end
					elseif ((v81 <= 62) or (3222 < 3073)) then
						if ((951 <= 1496) and (v81 == ((392 - 153) - 178))) then
							v78[v80[(1236 + 492) - (1668 + 58)]][v78[v80[3]]] = v78[v80[(471 + 159) - (512 + 114)]];
						else
							v78[v80[2]][v80[7 - 4]] = v78[v80[8 - (5 - 1)]];
						end
					elseif (v81 <= (16 + 47)) then
						v78[v80[2]] = #v78[v80[3]];
					elseif (v81 > (222 - 158)) then
						v78[v80[1 + 1]] = v80[3] + v78[v80[1 + 3]];
					else
						v78[v80[2 + 0]] = v60[v80[3]];
					end
				elseif ((744 <= 2942) and (v81 <= (236 - 166))) then
					if ((v81 <= 67) or (1833 <= 1322)) then
						if (v81 > (2060 - (109 + 1885))) then
							for v217 = v80[2], v80[1472 - (1269 + 200)] do
								v78[v217] = nil;
							end
						else
							for v219 = v80[3 - 1], v80[3] do
								v78[v219] = nil;
							end
						end
					elseif (v81 <= (883 - (98 + 717))) then
						do
							return;
						end
					elseif (v81 == (895 - (802 + 24))) then
						v78[v80[2 - 0]][v80[3 - (0 - 0)]] = v78[v80[1 + 3]];
					else
						local v264 = v80[2 + 0];
						local v265, v266 = v71(v78[v264](v13(v78, v264 + 1, v73)));
						v73 = (v266 + v264) - 1;
						local v267 = 0 + (0 - 0);
						for v288 = v264, v73 do
							v267 = v267 + 1 + 0;
							v78[v288] = v265[v267];
						end
					end
				elseif (v81 <= (200 - (2008 - (446 + 1434)))) then
					if ((v81 > (236 - (1448 - (1040 + 243)))) or (3467 <= 1055)) then
						if (v80[(2 - 1) + 1] == v78[v80[2 + 2]]) then
							v72 = v72 + 1 + 0;
						else
							v72 = v80[3];
						end
					else
						local v199 = v80[2 + 0];
						v78[v199] = v78[v199](v13(v78, v199 + 1 + 0, v73));
					end
				elseif (v81 <= (1506 - (797 + 636))) then
					v78[v80[9 - 7]] = v78[v80[(3469 - (559 + 1288)) - (1427 + 192)]][v80[2 + 2]];
				elseif ((3541 == 3541) and ((v81 > (171 - 97)) or (1736 == 571))) then
					if (v78[v80[(1933 - (609 + 1322)) + 0]] == v78[v80[2 + (456 - (13 + 441))]]) then
						v72 = v72 + (327 - (192 + 134));
					else
						v72 = v80[1279 - (316 + 960)];
					end
				else
					local v269 = v80[2 + 0];
					local v270 = v78[v269 + 2 + 0];
					local v271 = v78[v269] + v270;
					v78[v269] = v271;
					if ((v270 > ((0 - 0) + 0)) or (3557 >= 4003)) then
						if ((v271 <= v78[v269 + (3 - 2)]) or (896 > 4769) or (657 >= 1668)) then
							v72 = v80[554 - (83 + 468)];
							v78[v269 + (1809 - (1202 + 604))] = v271;
						end
					elseif ((v271 >= v78[v269 + 1]) or (1045 <= 1020) or (1027 > 3858)) then
						local v342 = 0 - 0;
						while true do
							if ((v342 == (0 - 0)) or (3654 < 450)) then
								v72 = v80[8 - 5];
								v78[v269 + (328 - (45 + 280))] = v271;
								break;
							end
						end
					end
				end
				v72 = v72 + 1 + 0;
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!493Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E73657274026Q00384003053Q0022FAACD2CA03073Q00EB7195D9BCAE18026Q003540031E3Q00B4F5DA8883C9CA9491F3CC83C7F3DCC689F5DBC686ECCE8F8BFBCD8A82B403043Q00E6E79AAF026Q003440030C3Q0038564345F9B00E4B4042FE8603063Q00E36B39362B9D026Q00314003083Q00C14348C9F15F55C603043Q00A885363A026Q00304003043Q006ED198E803043Q009C3AB4E0026Q002E4003053Q0044E42Q542503063Q002E108D203840026Q002C4003103Q00F2C734CA9C591EFBC7CB39CFA65F05FC03083Q0092A1A25AAED2366A026Q00184003113Q007E38F6C9C4A27F944939D5D1C2B37F874903083Q00E02C5D86A5ADC11E026Q00104003203Q002636A37CF23A27A47ED53632B971D33B73A46B9C3B3CB938D83035A476D9317D03053Q00BC5553CD18026Q000840033B3Q0070BEEA200F07F51E51F6C822054EC12Q51A4AB3B03448C184AF6E9211C07841B4BBFE56E004EDF124BA4EF6E1D48D90304B5E7271445C31056B2A203083Q007124D68B4E6427AC027Q004003043Q007E4AF34803083Q00653F268421B8AFCC026Q00F03F03083Q0001C6B87FDBE9100903073Q007F67B3D61CAF8003043Q0067616D6503073Q00506C6163654964022Q007800E21D0242028Q0003043Q0074797065026Q00244003043Q007761726E030A3Q0047657453657276696365030D3Q0047616D654A616D41726361646503063Q004576656E7473030B3Q0052656D6F74654576656E7403123Q004F627461696E426164676547616D654A616D030A3Q004669726553657276657202A811096752092E43030C3Q00736574636C6970626F617264031B3Q00682Q7470733A2Q2F646973636F72642E2Q672F39796B3477654B4803043Q007761697403073Q00506C6179657273030B3Q004C6F63616C506C6179657203093Q0043686172616374657203073Q005069766F74546F03063Q00434672616D652Q033Q006E657703073Q00566563746F7233025Q00806240026Q003B40026Q0033400007013Q00287Q002Q12000100013Q002027000100010002002Q12000200013Q002027000200020003002Q12000300013Q002027000300030004002Q12000400053Q0006300004000B0001000100042D3Q000B0001002Q12000400063Q002027000500040007002Q12000600083Q002027000600060009002Q12000700083Q00202700070007000A00062100083Q000100062Q00233Q00074Q00233Q00014Q00233Q00054Q00233Q00024Q00233Q00034Q00233Q00064Q0013000900083Q001239000A000C3Q001239000B000D4Q000F0009000B000200103E3Q000B00092Q0013000900083Q001239000A000F3Q001239000B00104Q000F0009000B000200103E3Q000E00092Q0013000900083Q001239000A00123Q001239000B00134Q000F0009000B000200103E3Q001100092Q0013000900083Q001239000A00153Q001239000B00164Q000F0009000B000200103E3Q001400092Q0013000900083Q001239000A00183Q001239000B00194Q000F0009000B000200103E3Q001700092Q0013000900083Q001239000A001B3Q001239000B001C4Q000F0009000B000200103E3Q001A00092Q0013000900083Q001239000A001E3Q001239000B001F4Q000F0009000B000200103E3Q001D00092Q0013000900083Q001239000A00213Q001239000B00224Q000F0009000B000200103E3Q002000092Q0013000900083Q001239000A00243Q001239000B00254Q000F0009000B000200103E3Q002300092Q0013000900083Q001239000A00273Q001239000B00284Q000F0009000B000200103E3Q002600092Q0013000900083Q001239000A002A3Q001239000B002B4Q000F0009000B000200103E3Q002900092Q0013000900083Q001239000A002D3Q001239000B002E4Q000F0009000B000200103E3Q002C0009002Q120009002F3Q00202700090009003000261F000900062Q01003100042D3Q00062Q01001239000900324Q0043000A000B3Q00261F000900B30001002900042D3Q00B30001001239000C00324Q0043000D000F3Q00261F000C00620001003200042D3Q00620001001239000D00324Q0043000E000E3Q001239000C002C3Q00261F000C005D0001002C00042D3Q005D00012Q0043000F000F3Q00261F000D006A0001003200042D3Q006A0001001239000E00324Q0043000F000F3Q001239000D002C3Q00261F000D00650001002C00042D3Q0065000100261F000E006C0001003200042D3Q006C0001001239000F00323Q00261F000F00730001002C00042D3Q00730001001239000900263Q00042D3Q00B3000100261F000F006F0001003200042D3Q006F0001001239001000324Q0043001100113Q00261F001000770001003200042D3Q00770001001239001100323Q00261F001100A50001003200042D3Q00A50001001239001200324Q0043001300133Q000E360032007E0001001200042D3Q007E0001001239001300323Q00261F001300850001002C00042D3Q008500010012390011002C3Q00042D3Q00A5000100261F001300810001003200042D3Q00810001002Q12001400334Q00130015000B4Q003700140002000200202700153Q002C000608001400930001001500042D3Q009300012Q00130014000B3Q00202700153Q002900202700163Q0026001239001700344Q001600140017000100042D3Q00960001002Q12001400353Q00202700153Q00232Q0038001400020001002Q120014002F3Q00202500140014003600202700163Q00202Q000F00140016000200202700140014003700202700140014003800202700140014003900202700140014003A00202500140014003B0012390016003C4Q00160014001600010012390013002C3Q00042D3Q0081000100042D3Q00A5000100042D3Q007E000100261F0011007A0001002C00042D3Q007A0001001239000F002C3Q00042D3Q006F000100042D3Q007A000100042D3Q006F000100042D3Q0077000100042D3Q006F000100042D3Q00B3000100042D3Q006C000100042D3Q00B3000100042D3Q0065000100042D3Q00B3000100042D3Q005D000100261F000900C70001002C00042D3Q00C70001001239000C00324Q0043000D000D3Q00261F000C00B70001003200042D3Q00B70001001239000D00323Q00261F000D00C00001003200042D3Q00C000012Q0043000B000B3Q000621000B0001000100012Q00237Q001239000D002C3Q00261F000D00BA0001002C00042D3Q00BA0001001239000900293Q00042D3Q00C7000100042D3Q00BA000100042D3Q00C7000100042D3Q00B7000100261F000900CF0001002300042D3Q00CF0001002Q12000C003D3Q001239000D003E4Q0038000C000200012Q0013000C000A4Q0006000C0001000100042D3Q00062Q0100261F000900D50001003200042D3Q00D500012Q0043000A000A3Q000621000A0002000100012Q00237Q0012390009002C3Q00261F000900590001002600042D3Q00590001001239000C00324Q0043000D000D3Q00261F000C00D90001003200042D3Q00D90001001239000D00323Q00261F000D00FE0001003200042D3Q00FE0001001239000E00324Q0043000F000F3Q00261F000E00E00001003200042D3Q00E00001001239000F00323Q00261F000F00F70001003200042D3Q00F70001002Q120010003F4Q0006001000010001002Q120010002F3Q002027001000100040002027001000100041002027001000100042002025001000100043002Q12001200443Q002027001200120045002Q12001300463Q002027001300130045001239001400473Q001239001500483Q001239001600494Q001C001300164Q004600126Q001000103Q0001001239000F002C3Q00261F000F00E30001002C00042D3Q00E30001001239000D002C3Q00042D3Q00FE000100042D3Q00E3000100042D3Q00FE000100042D3Q00E00001000E36002C00DC0001000D00042D3Q00DC0001001239000900233Q00042D3Q0059000100042D3Q00DC000100042D3Q0059000100042D3Q00D9000100042D3Q005900012Q00443Q00013Q00033Q00023Q00026Q00F03F026Q00704002264Q002800025Q001239000300014Q003F00045Q001239000500013Q00041E0003002100012Q001A00076Q0013000800024Q001A000900014Q001A000A00024Q001A000B00034Q001A000C00044Q0013000D6Q0013000E00063Q002026000F000600012Q001C000C000F4Q003C000B3Q00022Q001A000C00034Q001A000D00044Q0013000E00014Q003F000F00014Q0034000F0006000F001041000F0001000F2Q003F001000014Q00340010000600100010410010000100100020260010001000012Q001C000D00104Q0046000C6Q003C000A3Q0002002009000A000A00022Q00140009000A4Q001000073Q000100044A0003000500012Q001A000300054Q0013000400024Q0019000300044Q000D00036Q00443Q00017Q00083Q0003043Q0067616D65030A3Q005374617274657247756903073Q00536574436F7265026Q002C40026Q002E40026Q003040026Q003140026Q00084003143Q002Q12000300013Q0020270003000300020020250003000300032Q001A00055Q0020270005000500042Q002800063Q00032Q001A00075Q0020270007000700052Q002C000600074Q001A00075Q0020270007000700062Q002C0006000700012Q001A00075Q00202700070007000700063A000800110001000200042D3Q00110001001239000800084Q002C0006000700082Q00160003000600012Q00443Q00017Q00123Q00028Q00026Q00F03F027Q004003043Q0067616D65030A3Q0047657453657276696365026Q00344003043Q007761726E026Q003540026Q00084003043Q00506C617903083Q00496E7374616E63652Q033Q006E6577026Q00384003073Q00536F756E64496403173Q00726278612Q73657469643A2Q2F3837343536392Q32353103063Q00566F6C756D65026Q00E03F03063Q00506172656E7400F93Q0012393Q00014Q0043000100043Q000E360002000600013Q00042D3Q000600012Q0043000300043Q0012393Q00033Q00261F3Q000B0001000100042D3Q000B0001001239000100014Q0043000200023Q0012393Q00023Q00261F3Q00020001000300042D3Q0002000100261F000100D40001000200042D3Q00D400012Q0043000400043Q00261F0002006F0001000100042D3Q006F0001001239000500014Q0043000600063Q00261F000500140001000100042D3Q00140001001239000600013Q00261F000600680001000100042D3Q00680001001239000700014Q0043000800083Q00261F0007001B0001000100042D3Q001B0001001239000800013Q00261F000800220001000200042D3Q00220001001239000600023Q00042D3Q00680001000E360001001E0001000800042D3Q001E0001002Q12000900043Q0020250009000900052Q001A000B5Q002027000B000B00062Q000F0009000B00022Q0013000300093Q000630000300640001000100042D3Q00640001001239000900014Q0043000A000B3Q00261F000900560001000200042D3Q0056000100261F000A00300001000100042D3Q00300001001239000B00013Q00261F000B00330001000100042D3Q00330001001239000C00014Q0043000D000D3Q000E36000100370001000C00042D3Q00370001001239000D00013Q00261F000D003A0001000100042D3Q003A0001001239000E00014Q0043000F000F3Q00261F000E003E0001000100042D3Q003E0001001239000F00013Q00261F000F00410001000100042D3Q00410001001239001000013Q00261F001000440001000100042D3Q00440001002Q12001100074Q001A00125Q0020270012001200082Q00380011000200012Q00443Q00013Q00042D3Q0044000100042D3Q0041000100042D3Q003A000100042D3Q003E000100042D3Q003A000100042D3Q0033000100042D3Q0037000100042D3Q0033000100042D3Q0064000100042D3Q0030000100042D3Q0064000100261F0009002E0001000100042D3Q002E0001001239000C00013Q00261F000C005E0001000100042D3Q005E0001001239000A00014Q0043000B000B3Q001239000C00023Q00261F000C00590001000200042D3Q00590001001239000900023Q00042D3Q002E000100042D3Q0059000100042D3Q002E0001001239000800023Q00042D3Q001E000100042D3Q0068000100042D3Q001B000100261F000600170001000200042D3Q00170001001239000200023Q00042D3Q006F000100042D3Q0017000100042D3Q006F000100042D3Q0014000100261F000200740001000900042D3Q0074000100202500050004000A2Q003800050002000100042D3Q00F8000100261F000200B10001000200042D3Q00B10001001239000500014Q0043000600073Q00261F0005007D0001000100042D3Q007D0001001239000600014Q0043000700073Q001239000500023Q00261F000500780001000200042D3Q00780001000E360001007F0001000600042D3Q007F0001001239000700013Q00261F000700860001000200042D3Q00860001001239000200033Q00042D3Q00B1000100261F000700820001000100042D3Q00820001001239000800014Q0043000900093Q00261F0008008A0001000100042D3Q008A0001001239000900013Q000E36000100A50001000900042D3Q00A50001001239000A00014Q0043000B000B3Q00261F000A00910001000100042D3Q00910001001239000B00013Q00261F000B009E0001000100042D3Q009E0001002Q12000C000B3Q002027000C000C000C2Q001A000D5Q002027000D000D000D2Q0037000C000200022Q00130004000C3Q0030290004000E000F001239000B00023Q00261F000B00940001000200042D3Q00940001001239000900023Q00042D3Q00A5000100042D3Q0094000100042D3Q00A5000100042D3Q0091000100261F0009008D0001000200042D3Q008D0001001239000700023Q00042D3Q0082000100042D3Q008D000100042D3Q0082000100042D3Q008A000100042D3Q0082000100042D3Q00B1000100042D3Q007F000100042D3Q00B1000100042D3Q0078000100261F000200100001000300042D3Q00100001001239000500014Q0043000600063Q000E36000100B50001000500042D3Q00B50001001239000600013Q00261F000600CB0001000100042D3Q00CB0001001239000700014Q0043000800083Q00261F000700BC0001000100042D3Q00BC0001001239000800013Q00261F000800C40001000100042D3Q00C4000100302900040010001100103E000400120003001239000800023Q00261F000800BF0001000200042D3Q00BF0001001239000600023Q00042D3Q00CB000100042D3Q00BF000100042D3Q00CB000100042D3Q00BC0001000E36000200B80001000600042D3Q00B80001001239000200093Q00042D3Q0010000100042D3Q00B8000100042D3Q0010000100042D3Q00B5000100042D3Q0010000100042D3Q00F80001000E360001000D0001000100042D3Q000D0001001239000500014Q0043000600063Q00261F000500D80001000100042D3Q00D80001001239000600013Q00261F000600DF0001000200042D3Q00DF0001001239000100023Q00042D3Q000D000100261F000600DB0001000100042D3Q00DB0001001239000700014Q0043000800083Q00261F000700E30001000100042D3Q00E30001001239000800013Q00261F000800EB0001000100042D3Q00EB0001001239000200014Q0043000300033Q001239000800023Q00261F000800E60001000200042D3Q00E60001001239000600023Q00042D3Q00DB000100042D3Q00E6000100042D3Q00DB000100042D3Q00E3000100042D3Q00DB000100042D3Q000D000100042D3Q00D8000100042D3Q000D000100042D3Q00F8000100042D3Q000200012Q00443Q00017Q00", v9(), ...);
