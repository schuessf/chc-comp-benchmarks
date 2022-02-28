(set-logic HORN)
(set-info :source |
Author: Frank Schuessele <schuessf@informatik.uni-freiburg.de>
Date: 2022-02-28
Generated from SV-COMP example pthread-ext/05_tas.c using Ultimate(using some simplification)
|)

(declare-fun Inv (Int (Array Int Int) Int Int Int Int Int Int Int Int Int) Bool)

(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c loc_main_1 main_i_1 loc_thread_2 cond_2 address_2 loc_thread_1 cond_1 address_1))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (cond_2 Int) (address_2 Int)) (Inv lock memory c 0 main_i_1 (- 1) cond_1 address_1 (- 1) cond_2 address_2)))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (not (Inv lock memory c loc_main_1 main_i_1 0 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c 0 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= 0 main_i_1) (Inv lock memory c 1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (lock_1 Int)) (=> (Inv lock memory c 1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= lock_1 0) (Inv lock_1 memory c 2 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock_2 Int) (memory_2 (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (memory_1 (Array Int Int))) (=> (Inv lock_2 memory_2 c 2 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= memory_1 (store memory_2 lock_2 0)) (Inv lock_2 memory_1 c 3 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (c_1 Int)) (=> (Inv lock memory c 3 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_1 0) (Inv lock memory c_1 4 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_3 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (main_i_2 Int)) (=> (Inv lock memory c 4 main_i_3 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= (+ 1 main_i_3) main_i_2) (Inv lock memory c 5 main_i_2 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c 4 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c 6 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c 5 main_i_1 (- 1) cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c 4 main_i_1 1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c 5 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c 4 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c loc_main_1 main_i_1 1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= address_1 cond_1) (Inv lock memory c loc_main_1 main_i_1 2 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock_10 Int) (memory_21 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_8 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (memory_19 (Array Int Int))) (=> (Inv lock_10 memory_21 c loc_main_1 main_i_1 2 cond_8 address_1 loc_thread_2 cond_2 address_2) (= memory_19 (store (store memory_21 cond_8 (select memory_21 lock_10)) lock_10 1)) (Inv lock_10 memory_19 c loc_main_1 main_i_1 4 cond_8 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_3 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c loc_main_1 main_i_1 4 cond_3 address_1 loc_thread_2 cond_2 address_2) (= cond_3 1) (Inv lock memory c loc_main_1 main_i_1 5 cond_3 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_5 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c loc_main_1 main_i_1 4 cond_5 address_1 loc_thread_2 cond_2 address_2) (not (= cond_5 1)) (Inv lock memory c loc_main_1 main_i_1 6 cond_5 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock_8 Int) (memory_15 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_6 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (memory_13 (Array Int Int))) (=> (Inv lock_8 memory_15 c loc_main_1 main_i_1 5 cond_6 address_1 loc_thread_2 cond_2 address_2) (= memory_13 (store (store memory_15 cond_6 (select memory_15 lock_8)) lock_8 1)) (Inv lock_8 memory_13 c loc_main_1 main_i_1 4 cond_6 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_3 Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (c_2 Int)) (=> (Inv lock memory c_3 loc_main_1 main_i_1 6 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_2 (+ c_3 1)) (Inv lock memory c_2 loc_main_1 main_i_1 7 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_4 Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c_4 loc_main_1 main_i_1 7 cond_1 address_1 loc_thread_2 cond_2 address_2) (not (= c_4 1)) (Inv lock memory c_4 loc_main_1 main_i_1 0 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_5 Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (=> (Inv lock memory c_5 loc_main_1 main_i_1 7 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_5 1) (Inv lock memory c_5 loc_main_1 main_i_1 8 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_7 Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (c_6 Int)) (=> (Inv lock memory c_7 loc_main_1 main_i_1 8 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_6 (+ (- 1) c_7)) (Inv lock memory c_6 loc_main_1 main_i_1 9 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock_7 Int) (memory_12 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (memory_11 (Array Int Int))) (=> (Inv lock_7 memory_12 c loc_main_1 main_i_1 9 cond_1 address_1 loc_thread_2 cond_2 address_2) (= (store memory_12 lock_7 0) memory_11) (Inv lock_7 memory_11 c loc_main_1 main_i_1 2 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (let ((.cse0 (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))) (=> (Inv lock memory c loc_main_1 main_i_1 1 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 1 cond_2 address_1) .cse0 (= address_1 cond_1) .cse0))))
(assert (forall ((lock_10 Int) (memory_21 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (cond_8 Int) (memory_19 (Array Int Int))) (=> (Inv lock_10 memory_21 c loc_main_1 main_i_1 2 cond_8 address_1 loc_thread_2 cond_2 address_2) (Inv lock_10 memory_21 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 2 cond_8 address_2) (Inv lock_10 memory_21 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= memory_19 (store (store memory_21 cond_8 (select memory_21 lock_10)) lock_10 1)) (Inv lock_10 memory_19 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (cond_3 Int)) (let ((.cse0 (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))) (=> (Inv lock memory c loc_main_1 main_i_1 4 cond_3 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 4 cond_3 address_2) .cse0 (= cond_3 1) .cse0))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (cond_5 Int)) (let ((.cse0 (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))) (=> (Inv lock memory c loc_main_1 main_i_1 4 cond_5 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 4 cond_5 address_2) .cse0 (not (= cond_5 1)) .cse0))))
(assert (forall ((lock_8 Int) (memory_15 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (cond_6 Int) (memory_13 (Array Int Int))) (=> (Inv lock_8 memory_15 c loc_main_1 main_i_1 5 cond_6 address_1 loc_thread_2 cond_2 address_2) (Inv lock_8 memory_15 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 5 cond_6 address_2) (Inv lock_8 memory_15 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= memory_13 (store (store memory_15 cond_6 (select memory_15 lock_8)) lock_8 1)) (Inv lock_8 memory_13 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_3 Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (c_2 Int)) (=> (Inv lock memory c_3 loc_main_1 main_i_1 6 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c_3 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 6 cond_2 address_2) (Inv lock memory c_3 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_2 (+ c_3 1)) (Inv lock memory c_2 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_4 Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (let ((.cse0 (Inv lock memory c_4 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))) (=> (Inv lock memory c_4 loc_main_1 main_i_1 7 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c_4 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 7 cond_2 address_2) .cse0 (not (= c_4 1)) .cse0))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_5 Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int)) (let ((.cse0 (Inv lock memory c_5 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))) (=> (Inv lock memory c_5 loc_main_1 main_i_1 7 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c_5 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 7 cond_2 address_2) .cse0 (= c_5 1) .cse0))))
(assert (forall ((lock Int) (memory (Array Int Int)) (c_7 Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (c_6 Int)) (=> (Inv lock memory c_7 loc_main_1 main_i_1 8 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock memory c_7 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 8 cond_2 address_2) (Inv lock memory c_7 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= c_6 (+ (- 1) c_7)) (Inv lock memory c_6 loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))
(assert (forall ((lock_7 Int) (memory_12 (Array Int Int)) (c Int) (loc_main_1 Int) (main_i_1 Int) (loc_thread_1 Int) (cond_1 Int) (address_1 Int) (loc_thread_2 Int) (cond_2 Int) (address_2 Int) (memory_11 (Array Int Int))) (=> (Inv lock_7 memory_12 c loc_main_1 main_i_1 9 cond_1 address_1 loc_thread_2 cond_2 address_2) (Inv lock_7 memory_12 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 9 cond_2 address_2) (Inv lock_7 memory_12 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2) (= (store memory_12 lock_7 0) memory_11) (Inv lock_7 memory_11 c loc_main_1 main_i_1 loc_thread_1 cond_1 address_1 loc_thread_2 cond_2 address_2))))

(check-sat)