(set-logic HORN)
(set-info :source |
Author: Frank Schuessele <schuessf@informatik.uni-freiburg.de>
Date: 2022-02-28
Generated from SV-COMP example pthread-ext/29_conditionals_vs.c using Ultimate(using some simplification)
|)

(declare-fun Inv (Int Int Int Int Int Int Int Int Int Int) Bool)

(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_2 z_2 y_2 x_2 loc_thread_1 z_1 y_1 x_1))))
(assert (forall ((m Int) (z_1 Int) (y_1 Int) (x_1 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (Inv m 0 (- 1) z_1 y_1 x_1 (- 1) z_2 y_2 x_2)))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (not (Inv m loc_main_1 0 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (not (Inv m loc_main_1 1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (m_1 Int)) (=> (Inv m 0 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (= m_1 0) (Inv m_1 1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m 1 (- 1) z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m 1 2 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m 1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> .cse0 .cse0))))
(assert (forall ((m Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m 1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m 2 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m_11 Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (m_10 Int)) (=> (Inv m_11 loc_main_1 2 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (and (= m_11 0) (= m_10 1)) (Inv m_10 loc_main_1 3 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 3 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (= y_1 x_1) (Inv m loc_main_1 4 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_2 Int) (x_2 Int) (loc_thread_2 Int) (z_2 Int)) (=> (Inv m loc_main_1 3 z_1 y_2 x_2 loc_thread_2 z_2 y_2 x_2) (not (= y_2 x_2)) (Inv m loc_main_1 5 z_1 y_2 x_2 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 4 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (= z_1 0) (Inv m loc_main_1 6 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 5 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (= z_2 1) (Inv m loc_main_1 6 z_2 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_3 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 6 z_3 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (= z_3 0) (Inv m loc_main_1 7 z_3 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_4 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 6 z_4 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (not (= z_4 0)) (Inv m loc_main_1 8 z_4 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_3 Int) (x_3 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 7 z_1 y_3 x_3 loc_thread_2 z_2 y_2 x_2) (not (= y_3 x_3)) (Inv m loc_main_1 0 z_1 y_3 x_3 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_4 Int) (x_4 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 7 z_1 y_4 x_4 loc_thread_2 z_2 y_2 x_2) (= y_4 x_4) (Inv m loc_main_1 9 z_1 y_4 x_4 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_5 Int) (x_5 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 8 z_1 y_5 x_5 loc_thread_2 z_2 y_2 x_2) (= y_5 x_5) (Inv m loc_main_1 1 z_1 y_5 x_5 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_6 Int) (x_6 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 8 z_1 y_6 x_6 loc_thread_2 z_2 y_2 x_2) (not (= y_6 x_6)) (Inv m loc_main_1 9 z_1 y_6 x_6 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m_7 Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (m_6 Int)) (=> (Inv m_7 loc_main_1 9 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (and (= m_7 1) (= m_6 0)) (Inv m_6 loc_main_1 10 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (=> (Inv m loc_main_1 10 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 11 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m_11 Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (m_10 Int)) (=> (Inv m_11 loc_main_1 2 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m_11 loc_main_1 loc_thread_1 z_1 y_1 x_1 2 z_2 y_2 x_2) (Inv m_11 loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (and (= m_11 0) (= m_10 1)) (Inv m_10 loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 3 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 3 z_2 y_1 x_1) .cse0 (= y_1 x_1) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 3 z_1 y_2 x_2 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 3 z_2 y_2 x_2) .cse0 (not (= y_2 x_2)) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 4 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 4 z_2 y_2 x_2) .cse0 (= z_1 0) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 5 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 5 z_2 y_2 x_2) .cse0 (= z_2 1) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (z_3 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 6 z_3 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 6 z_3 y_2 x_2) .cse0 (= z_3 0) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (z_4 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 6 z_4 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 6 z_4 y_2 x_2) .cse0 (not (= z_4 0)) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (y_3 Int) (x_3 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 7 z_1 y_3 x_3 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 7 z_2 y_3 x_3) .cse0 (not (= y_3 x_3)) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (y_4 Int) (x_4 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 7 z_1 y_4 x_4 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 7 z_2 y_4 x_4) .cse0 (= y_4 x_4) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (y_5 Int) (x_5 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 8 z_1 y_5 x_5 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 8 z_2 y_5 x_5) .cse0 (= y_5 x_5) .cse0))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (y_6 Int) (x_6 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 8 z_1 y_6 x_6 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 8 z_2 y_6 x_6) .cse0 (not (= y_6 x_6)) .cse0))))
(assert (forall ((m_7 Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int) (m_6 Int)) (=> (Inv m_7 loc_main_1 9 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m_7 loc_main_1 loc_thread_1 z_1 y_1 x_1 9 z_2 y_2 x_2) (Inv m_7 loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (and (= m_7 1) (= m_6 0)) (Inv m_6 loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))))
(assert (forall ((m Int) (loc_main_1 Int) (loc_thread_1 Int) (z_1 Int) (y_1 Int) (x_1 Int) (loc_thread_2 Int) (z_2 Int) (y_2 Int) (x_2 Int)) (let ((.cse0 (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2))) (=> (Inv m loc_main_1 10 z_1 y_1 x_1 loc_thread_2 z_2 y_2 x_2) (Inv m loc_main_1 loc_thread_1 z_1 y_1 x_1 10 z_2 y_2 x_2) .cse0 .cse0))))

(check-sat)
