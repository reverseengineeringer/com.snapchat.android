.class public final Lbsp$o;
.super Lbsp$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbsp$g;-><init>(I)V

    .line 569
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    const-string v0, "mobile_network"

    return-object v0
.end method

.method public final bridge synthetic c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Lbsp$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
