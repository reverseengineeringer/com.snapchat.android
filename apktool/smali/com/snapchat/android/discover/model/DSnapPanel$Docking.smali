.class public final enum Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Docking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPanel$Docking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum MEDIA_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum MEDIA_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum SCREEN_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum SCREEN_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field public static final enum SCREEN_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "MEDIA_TOP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "MEDIA_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "MEDIA_BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 72
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "SCREEN_TOP"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "SCREEN_CENTER"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    const-string v1, "SCREEN_BOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method

.method public static valueOfIgnoreCase(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 78
    const-string v0, "TOP"

    invoke-static {v0, p0}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 86
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string v0, "CENTER"

    invoke-static {v0, p0}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "BOTTOM"

    invoke-static {v0, p0}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v0

    goto :goto_0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->$VALUES:[Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method


# virtual methods
.method public final isMediaDocking()Z
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->MEDIA_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScreenDocking()Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_TOP:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_CENTER:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->SCREEN_BOTTOM:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
