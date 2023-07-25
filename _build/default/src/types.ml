open Core

module Time = struct
  module T = struct
    type t = float [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Open = struct
  module T = struct
    type t =
      { time : Time.t
      ; price : float
      }
    [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Close = struct
  module T = struct
    type t =
      { time : Time.t
      ; price : float
      }
    [@@deriving compare, sexp]
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

module Bitcoin = struct
  module T = struct
    type t = string [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end

module Day = struct
  module T = struct
    type t =
      { open_ : Open.t
      ; close : Close.t
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
      ; day : Open.t * Close.t * High.t * Market.t
      }
    [@@deriving compare, sexp]
  end

  include T
  include Comparable.Make (T)
end
