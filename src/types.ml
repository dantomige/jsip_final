open Core

module Time = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Price = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Volume = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Low = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module High = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Market = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Crypto = struct
  module T = struct
    type t =
      | BitCoin
      | Ethereum
    [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Day = struct
  module T = struct
    type t =
      { price : Price.t
      ; time : Time.t
      ; volume : Volume.t
      ; low : Low.t
      ; high : High.t
      ; market_cap : Market.t
      }
    [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Data = struct
  module T = struct
    type t =
      { bitcoin : Bitcoin.t
      ; day : Day.t
      }
    [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end
