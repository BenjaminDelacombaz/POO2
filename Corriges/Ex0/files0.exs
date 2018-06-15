defmodule FileFinder do
  def find_all_file_paths_starting_with(prefix, path \\ ".") do
    File.ls!(path)
    |> Enum.map(&Path.join(path, &1))
    |> Enum.flat_map(
      fn(pathname) ->
        cond do
          File.dir?(pathname) -> find_all_file_paths_starting_with(prefix, pathname)
          String.starts_with?(Path.basename(pathname), prefix) -> [pathname]
          true -> []
        end
      end)
  end
end

IO.puts FileFinder.find_all_file_paths_starting_with(hd(System.argv), Enum.at(System.argv, 1)) |> Enum.join("\n")
