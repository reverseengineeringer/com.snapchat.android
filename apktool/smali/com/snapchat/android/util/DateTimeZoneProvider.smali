.class public Lcom/snapchat/android/util/DateTimeZoneProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckn;


# static fields
.field public static final AVAILABLE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    sput-object v0, Lcom/snapchat/android/util/DateTimeZoneProvider;->AVAILABLE_IDS:Ljava/util/Set;

    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcgk;
    .locals 3

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    sget-object v0, Lcgk;->a:Lcgk;

    .line 40
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    sget-object v0, Lcgk;->a:Lcgk;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 36
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_2
    invoke-static {v0}, Lcgk;->a(I)Lcgk;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/util/DateTimeZoneProvider;->AVAILABLE_IDS:Ljava/util/Set;

    return-object v0
.end method
