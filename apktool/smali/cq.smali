.class public final Lcq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcq$a;,
        Lcq$b;
    }
.end annotation


# static fields
.field private static final a:Lck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lck;

    const-string v1, ","

    invoke-direct {v0, v1}, Lck;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcq;->a:Lck;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcp;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    sget-object v0, Lcq$b;->c:Lcq$b;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcq$a;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method
