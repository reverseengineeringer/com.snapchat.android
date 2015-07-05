.class public final Lcm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm$a;,
        Lcm$b;
    }
.end annotation


# static fields
.field private static final a:Lch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lch;

    const-string v1, ","

    invoke-direct {v0, v1}, Lch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcm;->a:Lch;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcl;
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
            "Lcl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    sget-object v0, Lcm$b;->c:Lcm$b;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcm$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcm$a;-><init>(Ljava/lang/Object;B)V

    goto :goto_0
.end method
