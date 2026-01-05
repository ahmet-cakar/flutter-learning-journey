# custom_scroll_view

A new Flutter project.

**Ne öğrendim**

-Sliver, scroll sırasında davranışı olan UI parçalarıdır.
-Scroll tek bir tanedir ve CustomScrollView tarafından yönetilir.
-SliverAppBar, scroll ile büyüyüp küçülebilir ve pinned ile üstte kalabilir.
-Column sadece widget’ları dizer; scroll davranışı vermez.
-AppBar’ın listeyle aynı scroll alanında davranması gerekiyorsa sliver kullanılır.
-expandedHeight büyük halin, küçük halin yüksekliği varsayılan olarak kToolbarHeight’tir.
-Sliver’lar kendi scroll’una sahip değildir, scroll’a tepki verir.


**Notlar** 

-CustomScrollView içine sadece sliver widget’ları konur.
-Normal widget koymak için SliverToBoxAdapter kullanılır.
-SliverList, ListView’in sliver karşılığıdır.
-SliverAppBar = scroll ile hareket eden AppBar.
-Column + ListView ile SliverAppBar davranışı yapılamaz.