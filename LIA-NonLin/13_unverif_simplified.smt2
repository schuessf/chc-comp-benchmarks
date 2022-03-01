(set-logic HORN)
(set-info :source |
Author: Frank Schuessele <schuessf@informatik.uni-freiburg.de>
Date: 2022-02-28
Generated from a simplified version of SV-COMP example pthread-ext/13_unverif.c using Ultimate
|)

(declare-fun Inv (Int Int Int Int Int Int Int) Bool)

(assert (forall ((s Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2) (Inv s r loc_main_1 loc_thread_2 l_2 loc_thread_1 l_1))))
(assert (forall ((s Int) (r Int) (l_1 Int) (l_2 Int)) (Inv s r 0 (- 1) l_1 (- 1) l_2)))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (not (Inv s r loc_main_1 0 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (r_1 Int)) (=> (Inv s r 0 loc_thread_1 l_1 loc_thread_2 l_2) (= r_1 0) (Inv s r_1 1 loc_thread_1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (s_1 Int)) (=> (Inv s r 1 loc_thread_1 l_1 loc_thread_2 l_2) (= s_1 0) (Inv s_1 r 2 loc_thread_1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r 2 (- 1) l_1 loc_thread_2 l_2) (Inv s r 2 1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (let ((.cse0 (Inv s r 2 loc_thread_1 l_1 loc_thread_2 l_2))) (=> .cse0 .cse0))))
(assert (forall ((s Int) (r Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r 2 loc_thread_1 l_1 loc_thread_2 l_2) (Inv s r 3 loc_thread_1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (l_5 Int)) (=> (Inv s r loc_main_1 1 l_1 loc_thread_2 l_2) (= l_5 0) (Inv s r loc_main_1 2 l_5 loc_thread_2 l_2))))
(assert (forall ((s Int) (r_4 Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (r_3 Int)) (=> (Inv s r_4 loc_main_1 2 l_1 loc_thread_2 l_2) (= (+ r_4 1) r_3) (Inv s r_3 loc_main_1 3 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r_5 Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r_5 loc_main_1 3 l_1 loc_thread_2 l_2) (= r_5 1) (Inv s r_5 loc_main_1 4 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r_2 Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r_2 loc_main_1 3 l_1 loc_thread_2 l_2) (not (= r_2 1)) (Inv s r_2 loc_main_1 5 l_1 loc_thread_2 l_2))))
(assert (forall ((s_3 Int) (r Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (s_2 Int)) (=> (Inv s_3 r loc_main_1 4 l_1 loc_thread_2 l_2) (= s_2 (+ s_3 1)) (Inv s_2 r loc_main_1 6 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r loc_main_1 5 l_1 loc_thread_2 l_2) (Inv s r loc_main_1 7 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s r loc_main_1 6 l_2 loc_thread_2 l_2) (= l_1 (+ l_2 1)) (Inv s r loc_main_1 8 l_1 loc_thread_2 l_2))))
(assert (forall ((s_4 Int) (r Int) (loc_main_1 Int) (l_3 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s_4 r loc_main_1 8 l_3 loc_thread_2 l_2) (not (= l_3 s_4)) (Inv s_4 r loc_main_1 0 l_3 loc_thread_2 l_2))))
(assert (forall ((s_5 Int) (r Int) (loc_main_1 Int) (l_4 Int) (loc_thread_2 Int) (l_2 Int)) (=> (Inv s_5 r loc_main_1 8 l_4 loc_thread_2 l_2) (= l_4 s_5) (Inv s_5 r loc_main_1 4 l_4 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (l_5 Int)) (let ((.cse0 (Inv s r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s r loc_main_1 1 l_1 loc_thread_2 l_2) (Inv s r loc_main_1 loc_thread_1 l_1 1 l_2) .cse0 (= l_5 0) .cse0))))
(assert (forall ((s Int) (r_4 Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (r_3 Int)) (=> (Inv s r_4 loc_main_1 2 l_1 loc_thread_2 l_2) (Inv s r_4 loc_main_1 loc_thread_1 l_1 2 l_2) (Inv s r_4 loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2) (= (+ r_4 1) r_3) (Inv s r_3 loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r_5 Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (let ((.cse0 (Inv s r_5 loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s r_5 loc_main_1 3 l_1 loc_thread_2 l_2) (Inv s r_5 loc_main_1 loc_thread_1 l_1 3 l_2) .cse0 (= r_5 1) .cse0))))
(assert (forall ((s Int) (r_2 Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (let ((.cse0 (Inv s r_2 loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s r_2 loc_main_1 3 l_1 loc_thread_2 l_2) (Inv s r_2 loc_main_1 loc_thread_1 l_1 3 l_2) .cse0 (not (= r_2 1)) .cse0))))
(assert (forall ((s_3 Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (s_2 Int)) (=> (Inv s_3 r loc_main_1 4 l_1 loc_thread_2 l_2) (Inv s_3 r loc_main_1 loc_thread_1 l_1 4 l_2) (Inv s_3 r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2) (= s_2 (+ s_3 1)) (Inv s_2 r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (let ((.cse0 (Inv s r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s r loc_main_1 5 l_1 loc_thread_2 l_2) (Inv s r loc_main_1 loc_thread_1 l_1 5 l_2) .cse0 .cse0))))
(assert (forall ((s Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int)) (let ((.cse0 (Inv s r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s r loc_main_1 6 l_2 loc_thread_2 l_2) (Inv s r loc_main_1 loc_thread_1 l_1 6 l_2) .cse0 (= l_1 (+ l_2 1)) .cse0))))
(assert (forall ((s_4 Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (l_3 Int)) (let ((.cse0 (Inv s_4 r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s_4 r loc_main_1 8 l_3 loc_thread_2 l_2) (Inv s_4 r loc_main_1 loc_thread_1 l_1 8 l_3) .cse0 (not (= l_3 s_4)) .cse0))))
(assert (forall ((s_5 Int) (r Int) (loc_main_1 Int) (loc_thread_1 Int) (l_1 Int) (loc_thread_2 Int) (l_2 Int) (l_4 Int)) (let ((.cse0 (Inv s_5 r loc_main_1 loc_thread_1 l_1 loc_thread_2 l_2))) (=> (Inv s_5 r loc_main_1 8 l_4 loc_thread_2 l_2) (Inv s_5 r loc_main_1 loc_thread_1 l_1 8 l_4) .cse0 (= l_4 s_5) .cse0))))

(check-sat)
