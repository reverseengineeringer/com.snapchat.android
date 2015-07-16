.class public final Lbxx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "#{"

    sput-object v0, Lbxx;->a:Ljava/lang/String;

    .line 42
    const-string v0, "}"

    sput-object v0, Lbxx;->b:Ljava/lang/String;

    return-void
.end method
