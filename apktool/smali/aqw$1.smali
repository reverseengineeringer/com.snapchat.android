.class public final Laqw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqw;


# direct methods
.method public constructor <init>(Laqw;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Laqw$1;->a:Laqw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Laqw$4;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal dialog option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_0
    invoke-static {}, Lakr;->aH()V

    .line 71
    iget-object v0, p0, Laqw$1;->a:Laqw;

    invoke-virtual {v0}, Laqw;->a()V

    .line 78
    :goto_0
    return-void

    .line 74
    :pswitch_1
    iget-object v0, p0, Laqw$1;->a:Laqw;

    invoke-virtual {v0}, Laqw;->a()V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Laqw$1;->a:Laqw;

    iget-object v0, v0, Laqw;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
