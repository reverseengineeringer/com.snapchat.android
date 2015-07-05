.class final Lnet/simonvt/numberpicker/SnapchatTimePicker$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 1

    .prologue
    .line 1861
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1865
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->b:I

    .line 1866
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1872
    iput v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->e:I

    .line 1873
    iput v4, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->d:I

    .line 1874
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1875
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z

    .line 1877
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    .line 1879
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v4}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z

    .line 1880
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1881
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    .line 1883
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 1886
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a()V

    .line 1887
    const/4 v0, 0x1

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->e:I

    .line 1888
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->d:I

    .line 1889
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 1893
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a()V

    .line 1894
    const/4 v0, 0x2

    iput v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->e:I

    .line 1895
    iput p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->d:I

    .line 1896
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, p0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->post(Ljava/lang/Runnable;)Z

    .line 1897
    return-void
.end method

.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1901
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->e:I

    packed-switch v0, :pswitch_data_0

    .line 1935
    :goto_0
    return-void

    .line 1903
    :pswitch_0
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->d:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1905
    :pswitch_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z

    .line 1906
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    goto :goto_0

    .line 1909
    :pswitch_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(Lnet/simonvt/numberpicker/SnapchatTimePicker;Z)Z

    .line 1910
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    goto :goto_0

    .line 1915
    :pswitch_3
    iget v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->d:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1917
    :pswitch_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->b(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1921
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->f(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    .line 1922
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->c(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    goto :goto_0

    .line 1925
    :pswitch_5
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->d(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1926
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1929
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->g(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Z

    .line 1930
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iget-object v1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$g;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->e(Lnet/simonvt/numberpicker/SnapchatTimePicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->invalidate(IIII)V

    goto/16 :goto_0

    .line 1901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1903
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1915
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
