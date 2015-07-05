.class public final Lana$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lana;
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
        value = "password"
    .end annotation
.end field

.field final synthetic b:Lana;


# direct methods
.method public constructor <init>(Lana;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 49
    iput-object p1, p0, Lana$a;->b:Lana;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 50
    iput-object p2, p0, Lana$a;->a:Ljava/lang/String;

    .line 51
    return-void
.end method
