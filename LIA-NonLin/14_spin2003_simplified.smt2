(set-logic HORN)
(set-info :source |
Author: Frank Schuessele <schuessf@informatik.uni-freiburg.de>
Date: 2022-02-28
Generated from SV-COMP example pthread-ext/14_spin2003.c using Ultimate(using some simplification)
|)

(declare-fun Inv (Int Int Int Int Int) Bool)

(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int)) (=> (Inv m x loc_main_1 loc_thread_1 loc_thread_2) (Inv m x loc_main_1 loc_thread_2 loc_thread_1))))
(assert (forall ((m Int) (x Int)) (Inv m x 0 (- 1) (- 1))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int)) (not (Inv m x loc_main_1 0 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_thread_1 Int) (loc_thread_2 Int) (x_1 Int)) (=> (Inv m x 0 loc_thread_1 loc_thread_2) (= x_1 1) (Inv m x_1 1 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_thread_1 Int) (loc_thread_2 Int) (m_1 Int)) (=> (Inv m x 1 loc_thread_1 loc_thread_2) (= m_1 0) (Inv m_1 x 2 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_thread_2 Int)) (=> (Inv m x 2 (- 1) loc_thread_2) (Inv m x 2 1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_thread_1 Int) (loc_thread_2 Int)) (let ((.cse0 (Inv m x 2 loc_thread_1 loc_thread_2))) (=> .cse0 .cse0))))
(assert (forall ((m Int) (x Int) (loc_thread_1 Int) (loc_thread_2 Int)) (=> (Inv m x 2 loc_thread_1 loc_thread_2) (Inv m x 3 loc_thread_1 loc_thread_2))))
(assert (forall ((m_11 Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int) (m_10 Int)) (=> (Inv m_11 x loc_main_1 1 loc_thread_2) (and (= m_11 0) (= m_10 1)) (Inv m_10 x loc_main_1 2 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int) (x_2 Int)) (=> (Inv m x loc_main_1 2 loc_thread_2) (= x_2 0) (Inv m x_2 loc_main_1 3 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int) (x_3 Int)) (=> (Inv m x loc_main_1 3 loc_thread_2) (= x_3 1) (Inv m x_3 loc_main_1 4 loc_thread_2))))
(assert (forall ((m Int) (x_4 Int) (loc_main_1 Int) (loc_thread_2 Int)) (=> (Inv m x_4 loc_main_1 4 loc_thread_2) (not (<= 1 x_4)) (Inv m x_4 loc_main_1 0 loc_thread_2))))
(assert (forall ((m Int) (x_5 Int) (loc_main_1 Int) (loc_thread_2 Int)) (=> (Inv m x_5 loc_main_1 4 loc_thread_2) (<= 1 x_5) (Inv m x_5 loc_main_1 5 loc_thread_2))))
(assert (forall ((m_7 Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int) (m_6 Int)) (=> (Inv m_7 x loc_main_1 5 loc_thread_2) (and (= m_7 1) (= m_6 0)) (Inv m_6 x loc_main_1 6 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_2 Int)) (=> (Inv m x loc_main_1 6 loc_thread_2) (Inv m x loc_main_1 7 loc_thread_2))))
(assert (forall ((m_11 Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int) (m_10 Int)) (=> (Inv m_11 x loc_main_1 1 loc_thread_2) (Inv m_11 x loc_main_1 loc_thread_1 1) (Inv m_11 x loc_main_1 loc_thread_1 loc_thread_2) (and (= m_11 0) (= m_10 1)) (Inv m_10 x loc_main_1 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int) (x_2 Int)) (=> (Inv m x loc_main_1 2 loc_thread_2) (Inv m x loc_main_1 loc_thread_1 2) (Inv m x loc_main_1 loc_thread_1 loc_thread_2) (= x_2 0) (Inv m x_2 loc_main_1 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int) (x_3 Int)) (=> (Inv m x loc_main_1 3 loc_thread_2) (Inv m x loc_main_1 loc_thread_1 3) (Inv m x loc_main_1 loc_thread_1 loc_thread_2) (= x_3 1) (Inv m x_3 loc_main_1 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x_4 Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int)) (let ((.cse0 (Inv m x_4 loc_main_1 loc_thread_1 loc_thread_2))) (=> (Inv m x_4 loc_main_1 4 loc_thread_2) (Inv m x_4 loc_main_1 loc_thread_1 4) .cse0 (not (<= 1 x_4)) .cse0))))
(assert (forall ((m Int) (x_5 Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int)) (let ((.cse0 (Inv m x_5 loc_main_1 loc_thread_1 loc_thread_2))) (=> (Inv m x_5 loc_main_1 4 loc_thread_2) (Inv m x_5 loc_main_1 loc_thread_1 4) .cse0 (<= 1 x_5) .cse0))))
(assert (forall ((m_7 Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int) (m_6 Int)) (=> (Inv m_7 x loc_main_1 5 loc_thread_2) (Inv m_7 x loc_main_1 loc_thread_1 5) (Inv m_7 x loc_main_1 loc_thread_1 loc_thread_2) (and (= m_7 1) (= m_6 0)) (Inv m_6 x loc_main_1 loc_thread_1 loc_thread_2))))
(assert (forall ((m Int) (x Int) (loc_main_1 Int) (loc_thread_1 Int) (loc_thread_2 Int)) (let ((.cse0 (Inv m x loc_main_1 loc_thread_1 loc_thread_2))) (=> (Inv m x loc_main_1 6 loc_thread_2) (Inv m x loc_main_1 loc_thread_1 6) .cse0 .cse0))))

(check-sat)
