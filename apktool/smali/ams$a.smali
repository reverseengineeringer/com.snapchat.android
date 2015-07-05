.class public final Lams$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lams;
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
        value = "email"
    .end annotation
.end field

.field final synthetic b:Lams;


# direct methods
.method public constructor <init>(Lams;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 59
    iput-object p1, p0, Lams$a;->b:Lams;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 60
    iput-object p2, p0, Lams$a;->a:Ljava/lang/String;

    .line 61
    return-void
.end method
