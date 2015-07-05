.class final Lafa$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafa;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lafa$a;Lafe;Ljavax/inject/Provider;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lbfy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafa;


# direct methods
.method constructor <init>(Lafa;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lafa$1;->a:Lafa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/snapchat/android/model/FriendAction;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/snapchat/android/model/FriendAction;

    .line 222
    sget-object v1, Lafa$3;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lafa$1;->a:Lafa;

    invoke-virtual {v0}, Lafa;->notifyDataSetChanged()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
