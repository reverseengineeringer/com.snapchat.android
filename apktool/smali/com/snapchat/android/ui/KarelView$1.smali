.class final Lcom/snapchat/android/ui/KarelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/KarelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/KarelView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/KarelView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->a(Lcom/snapchat/android/ui/KarelView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v1}, Lcom/snapchat/android/ui/KarelView;->b(Lcom/snapchat/android/ui/KarelView;)I

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v2}, Lcom/snapchat/android/ui/KarelView;->c(Lcom/snapchat/android/ui/KarelView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/KarelView;->a(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 140
    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v1}, Lcom/snapchat/android/ui/KarelView;->d(Lcom/snapchat/android/ui/KarelView;)I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/KarelView;->a(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 141
    iget-object v1, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v1}, Lcom/snapchat/android/ui/KarelView;->e(Lcom/snapchat/android/ui/KarelView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/KarelView;->invalidate()V

    .line 171
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->a(Lcom/snapchat/android/ui/KarelView;)Ljava/util/Random;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->f(Lcom/snapchat/android/ui/KarelView;)I

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/KarelView;->invalidate()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->g(Lcom/snapchat/android/ui/KarelView;)I

    move-result v0

    invoke-static {v0, v3}, Lcom/snapchat/android/ui/KarelView;->a(II)I

    move-result v0

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Something is rotten in the state of Denmark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->h(Lcom/snapchat/android/ui/KarelView;)I

    goto :goto_1

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->i(Lcom/snapchat/android/ui/KarelView;)I

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->j(Lcom/snapchat/android/ui/KarelView;)I

    goto :goto_1

    .line 164
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/KarelView$1;->a:Lcom/snapchat/android/ui/KarelView;

    invoke-static {v0}, Lcom/snapchat/android/ui/KarelView;->k(Lcom/snapchat/android/ui/KarelView;)I

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
