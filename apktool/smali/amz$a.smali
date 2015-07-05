.class public final Lamz$a;
.super Lpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamz;
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

.field final synthetic b:Lamz;


# direct methods
.method public constructor <init>(Lamz;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 46
    iput-object p1, p0, Lamz$a;->b:Lamz;

    invoke-direct {p0}, Lpl;-><init>()V

    .line 47
    iput-object p2, p0, Lamz$a;->a:Ljava/lang/String;

    .line 48
    return-void
.end method
