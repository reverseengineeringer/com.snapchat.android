.class public final Lbag;
.super Lbah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbag$a;
    }
.end annotation


# static fields
.field public static final IGNORED_METHODS:[Lbag$a;

.field private static final IGNORE_PACKAGE_PREFIX:Ljava/lang/String; = "ignore."

.field private static final SNAPCHAT_PACKAGE_AS_REGEX:Ljava/lang/String; = "com\\.snapchat\\.android"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lbag$a;

    const/4 v1, 0x0

    new-instance v2, Lbag$a;

    const-string v3, "WaitDoneHandler"

    const-string v4, "waitDone"

    invoke-direct {v2, v3, v4}, Lbag$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lbag;->IGNORED_METHODS:[Lbag$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lbah;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(com\\.snapchat\\.android.*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
