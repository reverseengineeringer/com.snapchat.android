.class public final Lqb$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field clientProperties:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_properties"
    .end annotation
.end field

.field seenTooltips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seen_tooltips"
    .end annotation
.end field

.field final synthetic this$0:Lqb;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqb;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lqb$a;->this$0:Lqb;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 47
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqb$a;->username:Ljava/lang/String;

    .line 49
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lqb$a;->this$0:Lqb;

    invoke-static {v1}, Lqb;->a(Lqb;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqb$a;->seenTooltips:Ljava/lang/String;

    .line 51
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lqb$a;->this$0:Lqb;

    invoke-static {v1}, Lqb;->b(Lqb;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqb$a;->clientProperties:Ljava/lang/String;

    return-void
.end method
