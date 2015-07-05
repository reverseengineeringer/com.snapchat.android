.class final Lra$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lra;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lra;

.field final synthetic val$isFromRain:Z


# direct methods
.method constructor <init>(Lra;Z)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lra$1;->this$0:Lra;

    iput-boolean p2, p0, Lra$1;->val$isFromRain:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lra$2;->$SwitchMap$com$snapchat$android$util$AlertDialogUtils$YesNoOption:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-boolean v0, p0, Lra$1;->val$isFromRain:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lajx;->an()V

    .line 48
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lra$1;->this$0:Lra;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lra;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lajx;->am()V

    goto :goto_1

    .line 51
    :pswitch_2
    iget-object v0, p0, Lra$1;->this$0:Lra;

    invoke-static {v0}, Lra;->a(Lra;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
