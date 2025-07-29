module ApplicationHelper
  def tailwind_color_for_type(type)
    colors = {
      "normal"   => "bg-gray-400",
      "fire"     => "bg-red-500",
      "water"    => "bg-blue-500",
      "grass"    => "bg-green-500",
      "electric" => "bg-yellow-400",
      "ice"      => "bg-cyan-400",
      "fighting" => "bg-orange-600",
      "poison"   => "bg-violet-600",
      "ground"   => "bg-amber-600",
      "flying"   => "bg-sky-400",
      "psychic"  => "bg-purple-500",
      "bug"      => "bg-lime-500",
      "rock"     => "bg-stone-600",
      "ghost"    => "bg-slate-600",
      "dragon"   => "bg-indigo-600",
      "steel"    => "bg-zinc-500",
      "dark"     => "bg-gray-800",
      "fairy"    => "bg-pink-400",
    }
    # Retorna a cor correspondente ou uma cor padrão (cinza) se o tipo não for encontrado
    colors[type.downcase] || "bg-gray-400"
  end
end