.class final Lrk$a;
.super Lqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# instance fields
.field final amount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field final currencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field

.field final isRain:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rain"
    .end annotation
.end field

.field final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field final recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field final synthetic this$0:Lrk;


# direct methods
.method constructor <init>(Lrk;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lrk$a;->this$0:Lrk;

    invoke-direct {p0}, Lqc;-><init>()V

    .line 48
    iget-object v0, p0, Lrk$a;->this$0:Lrk;

    invoke-static {v0}, Lrk;->a(Lrk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrk$a;->recipient:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lrk$a;->this$0:Lrk;

    invoke-static {v0}, Lrk;->b(Lrk;)I

    move-result v0

    iput v0, p0, Lrk$a;->amount:I

    .line 52
    iget-object v0, p0, Lrk$a;->this$0:Lrk;

    invoke-static {v0}, Lrk;->c(Lrk;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrk$a;->currencyCode:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lrk$a;->this$0:Lrk;

    invoke-static {v0}, Lrk;->d(Lrk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrk$a;->message:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lrk$a;->this$0:Lrk;

    invoke-static {v0}, Lrk;->e(Lrk;)Z

    move-result v0

    iput-boolean v0, p0, Lrk$a;->isRain:Z

    return-void
.end method
