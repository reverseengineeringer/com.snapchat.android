.class final Lafa$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafa$2;->a(Lbkh;Lajv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafa$2;


# direct methods
.method constructor <init>(Lafa$2;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lafa$2$1;->a:Lafa$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 498
    sget-object v0, Lafa$3;->a:[I

    iget-object v1, p0, Lafa$2$1;->a:Lafa$2;

    iget-object v1, v1, Lafa$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 504
    :goto_0
    iget-object v0, p0, Lafa$2$1;->a:Lafa$2;

    iget-object v0, v0, Lafa$2;->d:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    .line 505
    return-void

    .line 500
    :pswitch_0
    iget-object v0, p0, Lafa$2$1;->a:Lafa$2;

    iget-object v0, v0, Lafa$2;->d:Lafa;

    invoke-static {v0}, Lafa;->c(Lafa;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lafa$2$1;->a:Lafa$2;

    iget-object v1, v1, Lafa$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
