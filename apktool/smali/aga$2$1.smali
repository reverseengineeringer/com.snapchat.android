.class final Laga$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laga$2;->a(Lbli;Lakp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laga$2;


# direct methods
.method constructor <init>(Laga$2;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Laga$2$1;->a:Laga$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 582
    sget-object v0, Laga$3;->a:[I

    iget-object v1, p0, Laga$2$1;->a:Laga$2;

    iget-object v1, v1, Laga$2;->a:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 588
    :goto_0
    iget-object v0, p0, Laga$2$1;->a:Laga$2;

    iget-object v0, v0, Laga$2;->d:Laga;

    invoke-virtual {v0}, Laga;->notifyDataSetChanged()V

    .line 589
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Laga$2$1;->a:Laga$2;

    iget-object v0, v0, Laga$2;->d:Laga;

    iget-object v0, v0, Laga;->a:Ljava/util/List;

    iget-object v1, p0, Laga$2$1;->a:Laga$2;

    iget-object v1, v1, Laga$2;->b:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
