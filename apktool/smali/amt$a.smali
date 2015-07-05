.class public final Lamt$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamt;
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
        value = "new_password"
    .end annotation
.end field

.field final synthetic b:Lamt;


# direct methods
.method public constructor <init>(Lamt;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Lamt$a;->b:Lamt;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 52
    iput-object p2, p0, Lamt$a;->a:Ljava/lang/String;

    .line 53
    return-void
.end method
