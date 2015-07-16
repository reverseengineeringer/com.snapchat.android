.class public final Lbsp$l;
.super Ljava/lang/Object;

# interfaces
.implements Lbso;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lbsp$l;->a:Lorg/json/JSONArray;

    .line 371
    invoke-static {}, Lbsp;->c()Lbse;

    move-result-object v0

    iget-boolean v0, v0, Lbse;->a:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lbsp;->d()Lbss;

    move-result-object v0

    invoke-interface {v0}, Lbss;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lbsp$l;->a:Lorg/json/JSONArray;

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string v0, "logcat"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lbsp$l;->a:Lorg/json/JSONArray;

    return-object v0
.end method
