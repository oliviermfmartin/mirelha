local function paragraphs(str)
    local t = {}
    local function helper(line)
        line = string.gsub(line, "\n", "\\vfill\n");
        line = line .. "\\vfill\n\\linebreak";
        table.insert(t, line);
        return ""
    end
    helper((str:gsub("(.-)\n\n+", helper)))
    return t
end

function parallel_files(f1, f2)
    local left = io.open(f1, "r"):read("*a"):gsub("\r","");
    local left_pars = paragraphs(left);
    local right = io.open(f2,"r"):read("*a"):gsub("\r","");
    local right_pars = paragraphs(right);

    print(right);
    print(right_pars[1]);

    if (#left_pars ~= #right_pars) then
        tex.print("\\PackageWarning{parallelfiles}{Warning, the files do not have the same number of paragraphs}");
    end
    local i
    local max_lines = #left_pars
    if (#right_pars>max_lines) then
        max_lines = #right_pars
    end
    for i=1,max_lines do
        if i<#left_pars then
            tex.print("\\ParallelLText{");
            tex.print(left_pars[i]);
            tex.print("}")
        end;
        if i<#right_pars then
            tex.print("\\ParallelRText{");
            tex.print(right_pars[i]);
            tex.print("}");
        end
        tex.print("\\ParallelPar");
    end
end