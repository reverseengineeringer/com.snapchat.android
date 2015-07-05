.class public final Land$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Land;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation runtime Ltn;
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requested_username"
    .end annotation
.end field

.field final synthetic c:Land;


# direct methods
.method public constructor <init>(Land;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 57
    iput-object p1, p0, Land$a;->c:Land;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 58
    iput-object p2, p0, Land$a;->a:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Land$a;->b:Ljava/lang/String;

    .line 60
    return-void
.end method
