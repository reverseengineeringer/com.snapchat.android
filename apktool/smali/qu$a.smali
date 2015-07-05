.class final Lqu$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation runtime Ltn;
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

.field final synthetic this$0:Lqu;


# direct methods
.method constructor <init>(Lqu;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lqu$a;->this$0:Lqu;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 48
    iget-object v0, p0, Lqu$a;->this$0:Lqu;

    invoke-static {v0}, Lqu;->a(Lqu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqu$a;->recipient:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lqu$a;->this$0:Lqu;

    invoke-static {v0}, Lqu;->b(Lqu;)I

    move-result v0

    iput v0, p0, Lqu$a;->amount:I

    .line 52
    iget-object v0, p0, Lqu$a;->this$0:Lqu;

    invoke-static {v0}, Lqu;->c(Lqu;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqu$a;->currencyCode:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lqu$a;->this$0:Lqu;

    invoke-static {v0}, Lqu;->d(Lqu;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqu$a;->message:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lqu$a;->this$0:Lqu;

    invoke-static {v0}, Lqu;->e(Lqu;)Z

    move-result v0

    iput-boolean v0, p0, Lqu$a;->isRain:Z

    return-void
.end method
