.class final Lcjs;
.super Lcji;
.source "SourceFile"

# interfaces
.implements Lcjo;
.implements Lcjp;
.implements Lcjq;
.implements Lcjt;
.implements Lcju;


# static fields
.field static final a:Lcjs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcjs;

    invoke-direct {v0}, Lcjs;-><init>()V

    sput-object v0, Lcjs;->a:Lcjs;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcji;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
