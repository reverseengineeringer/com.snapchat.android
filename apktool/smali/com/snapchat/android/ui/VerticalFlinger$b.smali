.class final Lcom/snapchat/android/ui/VerticalFlinger$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/VerticalFlinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VerticalFlinger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/VerticalFlinger;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 955
    sget-object v0, Lcom/snapchat/android/ui/VerticalFlinger$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    invoke-static {v1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;)Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 975
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    invoke-static {v2}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;)Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->GONE:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    .line 973
    :goto_0
    :pswitch_1
    return-void

    .line 969
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    goto :goto_0

    .line 972
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    sget-object v1, Lcom/snapchat/android/ui/VerticalFlinger$MovementState;->CENTER:Lcom/snapchat/android/ui/VerticalFlinger$MovementState;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;Lcom/snapchat/android/ui/VerticalFlinger$MovementState;)V

    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Laqk;)V
    .locals 6
    .param p1    # Laqk;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 950
    iget-object v1, p0, Lcom/snapchat/android/ui/VerticalFlinger$b;->a:Lcom/snapchat/android/ui/VerticalFlinger;

    invoke-virtual {p1}, Laqk;->f()V

    iget-boolean v0, p1, Laqk;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lbgf;

    iget-object v2, p1, Laqk;->a:Lbj;

    iget-object v2, v2, Lbj;->d:Lbj$a;

    iget-wide v2, v2, Lbj$a;->a:D

    iget-object v4, p1, Laqk;->b:Lbj;

    iget-object v4, v4, Lbj;->d:Lbj$a;

    iget-wide v4, v4, Lbj$a;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lbgf;-><init>(DD)V

    :goto_0
    invoke-static {v1, v0}, Lcom/snapchat/android/ui/VerticalFlinger;->a(Lcom/snapchat/android/ui/VerticalFlinger;Lbgf;)V

    .line 951
    return-void

    .line 950
    :cond_0
    iget-object v0, p1, Laqk;->e:Lbgf;

    invoke-static {v0}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Laqk;->e:Lbgf;

    goto :goto_0
.end method
