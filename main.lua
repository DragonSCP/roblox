local v0 = tonumber
local v1 = string.byte
local v2 = string.char
local v3 = string.sub
local v4 = string.gsub
local v5 = string.rep
local v6 = table.concat
local v7 = table.insert
local v8 = math.ldexp
local v9 = getfenv or function() return _ENV end
local v10 = setmetatable
local v11 = pcall
local v12 = select
local v13 = unpack or table.unpack
local v14 = tonumber

local function v15(v16, v17, ...)
    local v18 = 0
    local v19
    local v20
    local v21
    local v22
    local v23
    local v24
    local v25
    local v26
    local v27
    local v28
    local v29
    local v30

    while true do
        if (v18 == 5) then
            v27 = v24
            v28 = nil
            function v28(...)
                return {...}, v12("#", ...)
            end
            v18 = 6
        end

        if (v18 == 1) then
            v21 = nil
            function v21(v31, v32, v33)
                if v33 then
                    local v70 = (v31 / ((5 - 3) ^ (v32 - (2 - 1)))) % (2 ^ (((v33 - (1 - 0)) - (v32 - 1)) + (2 - 1)))
                    return v70 - (v70 % (620 - (555 + (1701 - (1523 + 114)))))
                else
                    local v71 = 931 - (771 + 86 + 74)
                    local v72
                    while true do
                        if (v71 == (568 - (367 + 201))) then
                            v72 = (929 - (214 + 713)) ^ (v32 - ((1 - 0) + (1065 - (68 + 997))))
                            return (((v31 % (v72 + v72)) >= v72) and (1 + 0)) or (877 - (282 + 595))
                        end
                    end
                end
            end
            v22 = nil
            v18 = 2
        end

        if (v18 == 3) then
            v24 = nil
            function v24()
                local v34 = 1270 - (226 + 1044)
                local v35
                local v36
                local v37
                local v38
                while true do
                    if (v34 == (0 - (0 - 0))) then
                        v35, v36, v37, v38 = v1(v16, v19, v19 + (120 - (32 + 85)))
                        v19 = v19 + 4
                        v34 = 1
                    end
                    if (v34 == (958 - (892 + (415 - 87)))) then
                        return (v38 * (40022563 - 23245347)) + (v37 * 65536) + (v36 * 256) + v35
                    end
                end
            end
            v25 = nil
            v18 = 4
        end

        if (v18 == 6) then
            v29 = nil
            function v29()
                local v39 = 29 - (22 + 7)
                local v40
                local v41
                local v42
                local v43
                local v44
                local v45
                local v46
                local v47
                while true do
                    if (v39 == 3) then
                        v46 = nil
                        v47 = nil
                        v39 = 4
                    end
                    if (v39 == 1) then
                        local v75 = 0
                        while true do
                            if (v75 ~= 0) then
                            else
                                v42 = nil
                                v43 = nil
                                v75 = 1986 - (1266 + 719)
                            end
                            if (v75 == (604 - (268 + 335))) then
                                v39 = 2
                                break
                            end
                        end
                    end

                    if (v39 ~= 0) then
                    else
                        local v76 = 290 - (60 + 230)
                        while true do
                            if (v76 == (573 - (426 + 146))) then
                                v39 = 1
                                break
                            end
                            if (v76 == (1456 - (282 + 1174))) then
                                v40 = 811 - (569 + 242)
                                v41 = nil
                                v76 = 1
                            end
                        end
                    end

                    if (v39 == 4) then
                        -- Continuação do código
                    end
                end
            end
            v18 = 7
        end

        if (v18 == 7) then
            function v30(v61, v62, v63)
                local v64 = 0
                local v65
                local v66
                local v67
                while true do
                    if (v64 == 1) then
                        v67 = v61[3]
                        return function(...)
                            local v83 = v65
                            local v84 = v66
                            local v85 = v67
                            local v86 = v28
                            local v87 = 1
                            local v88 = -1
                            local v89 = {}
                            local v90 = {...}
                            local v91 = v12("#", ...) - 1
                            local v92 = {}
                            local v93 = {}
                            for v97 = 0, v91 do
                                if (v97 >= v85) then
                                    v89[v97 - v85] = v90[v97 + 1]
                                else
                                    v93[v97] = v90[v97 + 1]
                                end
                            end
                            local v94 = (v91 - v85) + 1
                            local v95
                            local v96
                            while true do
                                local v98 = 0
                                while true do
                                    if (v98 == 1) then
                                        if (v96 <= 3) then
                                            if (v96 <= 1) then
                                                if (v96 > 0) then
                                                    local v115 = 0
                                                    local v116
                                                    while true do
                                                        if (v115 == 0) then
                                                            v116 = v95[2]
                                                            v93[v116] = v93[v116](v13(v93, v116 + 1, v88))
                                                            break
                                                        end
                                                    end
                                                else
                                                    local v117 = v95[2]
                                                    local v118, v119 = v86(v93[v117](v13(v93, v117 + 1, v95[3])))
                                                    v88 = (v119 + v117) - 1
                                                    local v120 = 0
                                                    for v143 = v117, v88 do
                                                        v120 = v120 + 1
                                                        v93[v143] = v118[v120]
                                                    end
                                                end
                                            elseif (v96 > 2) then
                                                do return end
                                            else
                                                v93[v95[2]]()
                                            end
                                        elseif (v96 <= 5) then
                                            if (v96 > 4) then
                                                if ((v95[3] == "_ENV") or (v95[3] == "getfenv")) then
                                                    v93[v95[2]] = v63
                                                else
                                                    v93[v95[2]] = v63[v95[3]]
                                                end
                                            else
                                                v93[v95[2]] = v95[3]
                                            end
                                        elseif (v96 == 6) then
                                            local v123 = v95[2]
                                            local v124 = v93[v95[3]]
                                            v93[v123 + 1] = v124
                                            v93[v123] = v124[v95[4]]
                                        else
                                            local v128
                                            local v129, v130
                                            local v131
                                            local v132
                                            if ((v95[3] == "_ENV") or (v95[3] == "getfenv")) then
                                                v93[v95[2]] = v63
                                            else
                                                v93[v95[2]] = v63[v95[3]]
                                            end
                                            v87 = v87 + 1
                                            v95 = v83[v

